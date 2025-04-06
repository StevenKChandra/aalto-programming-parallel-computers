#include "mm.h"
#include <iostream>
#include <immintrin.h>
#include <vector>
#include <x86intrin.h>

/*
This is the function you need to implement. Quick reference:
 matrix A: (m, k); A[i, j] = A[i*k + j]
 matrix B: (k, n); B[i, j] = B[i+n + j]
 matrix C: (m, n); C[i, j] = C[i*n + j]
*/

typedef int16_t int16_32t __attribute__ ((vector_size (32 *sizeof(int16_t))));

constexpr int vs = 32; // number of int 16 type that fits into a 512-bits vector register
constexpr int nb = 8; // block size

const __m512i m512i_epi32_zero = _mm512_set_epi32(0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0);

static inline __m256i split_upper_lower(__m512i big) {
    return _mm256_add_epi32(_mm512_extracti32x8_epi32(big, 0), _mm512_extracti32x8_epi32(big, 1));
}

static inline __m256i permute1(__m256i A, __m256i B) {
    return _mm256_permutex2var_epi32(A, _mm256_set_epi32(11, 10, 9, 8, 3, 2, 1, 0), B);
}

static inline __m256i permute2(__m256i A, __m256i B) {
    return _mm256_permutex2var_epi32(A, _mm256_set_epi32(15, 14, 13, 12, 7, 6, 5, 4), B);
}

static inline __m512i add_upper_i32(__m512i big, __m256i small) {
    return _mm512_add_epi32(big, _mm512_inserti32x8(m512i_epi32_zero, small, 0));
}

static inline __m512i add_lower_i32(__m512i big, __m256i small) {
    return _mm512_add_epi32(big, _mm512_inserti32x8(m512i_epi32_zero, small, 1));
}

/**
 * calculates the matrix multiplication results and saves them to @param result
 * vector. Each calls requires two x vectors and eight y vectors. All vector are
 * AVX-512 integer vector.
 * @param x0 first x vector;
 * @param x1 second x vector;
 * @param y0 first x vector;
 * @param y1 second x vector;
 * @param y2 third x vector;
 * @param y3 foruth x vector;
 * @param y4 fifth x vector;
 * @param y5 sixth x vector;
 * @param y6 seventh x vector;
 * @param y7 eighth x vector;
 * @param result result vector;
 */
static inline void process_result(__m512i &x0, __m512i &x1, __m512i &y0,
    __m512i &y1, __m512i &y2, __m512i &y3, __m512i &y4, __m512i &y5,
    __m512i &y6, __m512i &y7, __m512i &result) {
    
    __m512i temp0, temp1;
    __m256i half0, half1, half2, half3, half4;
    
    // FIRST HALF (element A B C D)
    temp0 = _mm512_madd_epi16(x0, y0);
    // A0 A1 A2 ... A7
    half0 = split_upper_lower(temp0);

    temp1 = _mm512_madd_epi16(x0, y1);
    // B0 B1 B2 ... B7
    half1 = split_upper_lower(temp1);

    // A01 A23 B01 B23 A45 A67 B45 B67
    half0 = _mm256_hadd_epi32(half0, half1);

    temp0 = _mm512_madd_epi16(x0, y2);
    // C0 C1 C2 ... C7
    half2 = split_upper_lower(temp0);

    temp1 = _mm512_madd_epi16(x0, y3);
    // D0 D1 D2 ... D7
    half3 = split_upper_lower(temp1);

    // C01 C23 D01 D23 C45 C67 D45 D67
    half1 = _mm256_hadd_epi32(half2, half3);

    // A0123 B0123 C0123 D0123 A4567 B4567 C4567 D4567
    half0 = _mm256_hadd_epi32(half0, half1);

    // SECOND HALF (element E F G H)
    temp0 = _mm512_madd_epi16(x0, y4);
    // E0 E1 E2 ... E7
    half2 = split_upper_lower(temp0);

    temp1 = _mm512_madd_epi16(x0, y5);
    // F0 F1 F2 ... F7
    half3 = split_upper_lower(temp1);

    // E01 E23 F01 F23 E45 E67 F45 F67
    half1 = _mm256_hadd_epi32(half2, half3);

    temp0 = _mm512_madd_epi16(x0, y6);
    // G0 G1 G2 ... G7
    half3 = split_upper_lower(temp0);

    temp1 = _mm512_madd_epi16(x0, y7);
    // H0 H1 H2 ... H7
    half4 = split_upper_lower(temp1);

    // G01 G23 H01 H23 G45 G67 H45 H67
    half2 = _mm256_hadd_epi32(half3, half4);

    // E0123 F0123 G0123 H0123 E4567 F4567 G4567 H4567
    half1 = _mm256_hadd_epi32(half1, half2);

    // A0123 B0123 C0123 D0123 E0123 F0123 G0123 H0123
    half3 = permute1(half0, half1);

    // A4567 B4567 C4567 D4567 E4567 F4567 G4567 H4567
    half2 = permute2(half0, half1);

    // A01234567 B01234567 ... H01234567
    half3 = _mm256_add_epi32(half3, half2);

    // add to the result register;
    result = add_upper_i32(result, half3);

    // do the same as before, but this time for element I j K ... P
    temp0 = _mm512_madd_epi16(x1, y0);
    half0 = split_upper_lower(temp0);
    temp1 = _mm512_madd_epi16(x1, y1);
    half1 = split_upper_lower(temp1);
    half0 = _mm256_hadd_epi32(half0, half1);
    temp0 = _mm512_madd_epi16(x1, y2);
    half2 = split_upper_lower(temp0);
    temp1 = _mm512_madd_epi16(x1, y3);
    half3 = split_upper_lower(temp1);
    half1 = _mm256_hadd_epi32(half2, half3);
    half0 = _mm256_hadd_epi32(half0, half1);            
    temp0 = _mm512_madd_epi16(x1, y4);
    half2 = split_upper_lower(temp0);
    temp1 = _mm512_madd_epi16(x1, y5);
    half3 = split_upper_lower(temp1);
    half1 = _mm256_hadd_epi32(half2, half3);
    temp0 = _mm512_madd_epi16(x1, y6);
    half3 = split_upper_lower(temp0);
    temp1 = _mm512_madd_epi16(x1, y7);
    half4 = split_upper_lower(temp1);
    half2 = _mm256_hadd_epi32(half3, half4);
    half1 = _mm256_hadd_epi32(half1, half2);
    half3 = permute1(half0, half1);
    half2 = permute2(half0, half1);
    half3 = _mm256_add_epi32(half3, half2);
    result = add_lower_i32(result, half3);
}

/**
 * Moves the result from result AVX-512 vector to the given result array pointer.
 * Each function call requires one result vector and fills 16 elements of the
 * result array. Elements filled by each function call are:
 * (x_base + 0, y_base + 0), (x_base + 1, y_base + 0),
 * (x_base + 0, y_base + 1), (x_base + 1, y_base + 1),
 * (x_base + 0, y_base + 2), (x_base + 1, y_base + 2), 
 * ... 
 * (x_base + 0, y_base + 7), (x_base + 1, y_base + 7)
 * 
 * @param x_base 
 * @param y_base
 * @param m row count of the target array
 * @param n width count of the target array
 * @param result result register
 * @param target pointer to the base of result array
 */
void inline insert_result(int &&x_base, int &y_base, int &m, int &n, __m512i &result, std::int32_t *target) {
    int x, y;
    __m128i v128;

    v128 = _mm512_extracti32x4_epi32(result, 0);
    x = x_base;
    y = y_base;
    if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
    y = y_base + 1;
    if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
    y = y_base + 2;
    if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
    y = y_base + 3;
    if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
    y = y_base + 4;
    v128 = _mm512_extracti32x4_epi32(result, 1);
    if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
    y = y_base + 5;
    if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
    y = y_base + 6;
    if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
    y = y_base + 7;
    if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
    x = x_base + 1;
    y = y_base + 0;
    v128 = _mm512_extracti32x4_epi32(result, 2);
    if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
    y = y_base + 1;
    if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
    y = y_base + 2;
    if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
    y = y_base + 3;
    if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
    y = y_base + 4;
    v128 = _mm512_extracti32x4_epi32(result, 3);
    if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 0);
    y = y_base + 5;
    if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 1);
    y = y_base + 6;
    if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 2);
    y = y_base + 7;
    if (x < m && y < n) target[x * n + y] = _mm_extract_epi32(v128, 3);
}

void gemm(int m, int n, int k, const std::int8_t *A, const std::int8_t *B, std::int32_t *C) {
    const int vc = (k - 1 + vs) / vs; // number of vector column
    const int an = (m + nb - 1) / nb; // number of row blocks in array A
    const int bn = (n + nb - 1) / nb; // number of column blocks in array B
    const int ap = nb * an; // number of row in matrix A after padding
    const int bp = nb * bn; // number of column in matrix B after padding

    std::vector<int16_32t> A_v (ap * vc);
    std::vector<int16_32t> B_t (bp * vc);
    // move the data into vector
    for (int i = 0; i < vc; i++) {
        for (int j = 0; j < ap; j++) {
            for (int l = 0; l < vs; l++) {
                if (j >= m || i * vs + l >= k) {
                    A_v[j * vc + i][l] = 0;
                    continue;
                }
                A_v[j * vc + i][l] = A[j * k + i * vs + l];
            }
        }
        for (int j = 0; j < bp; j++) {
            for (int l = 0; l < vs; l++) {
                if (i * vs + l >= k || j >= n) {
                    B_t[j * vc + i][l] = 0;
                    continue;
                }
                B_t[j * vc + i][l] = B[(i * vs + l) * n + j];
            }
        }
    }

    // matrix multiplication process
    #pragma omp parallel for collapse(2)
    for (int i = 0; i < an; i++) {
        for (int j = 0; j < bn; j++) {
            /**
             * Solve 8 x 8 blocks every (i, j) iteration:
             *  ---------------
             * |A B C D E F G H|
             * |I J K L M N O P|
             * |Q R S..........|
             * |...............|
             * |...............|
             * |...............|
             * |...............|
             * |..............Z|
             *  ---------------
             */
            __m512i result0 = m512i_epi32_zero; // result of tile A B C ... P (16 tiles)
            __m512i result1 = m512i_epi32_zero; // result of tile Q R S ...
            __m512i result2 = m512i_epi32_zero; // etc.
            __m512i result3 = m512i_epi32_zero;
            for (int l = 0; l < vc; l++) {
                __m512i x0 = _mm512_loadu_si512(&A_v[(i * 8 + 0) * vc + l]);
                __m512i y0 = _mm512_loadu_si512(&B_t[(j * 8 + 0) * vc + l]);
                __m512i x1 = _mm512_loadu_si512(&A_v[(i * 8 + 1) * vc + l]);
                __m512i y1 = _mm512_loadu_si512(&B_t[(j * 8 + 1) * vc + l]);
                __m512i x2 = _mm512_loadu_si512(&A_v[(i * 8 + 2) * vc + l]);
                __m512i y2 = _mm512_loadu_si512(&B_t[(j * 8 + 2) * vc + l]);
                __m512i x3 = _mm512_loadu_si512(&A_v[(i * 8 + 3) * vc + l]);
                __m512i y3 = _mm512_loadu_si512(&B_t[(j * 8 + 3) * vc + l]);
                __m512i x4 = _mm512_loadu_si512(&A_v[(i * 8 + 4) * vc + l]);
                __m512i y4 = _mm512_loadu_si512(&B_t[(j * 8 + 4) * vc + l]);
                __m512i x5 = _mm512_loadu_si512(&A_v[(i * 8 + 5) * vc + l]);
                __m512i y5 = _mm512_loadu_si512(&B_t[(j * 8 + 5) * vc + l]);
                __m512i x6 = _mm512_loadu_si512(&A_v[(i * 8 + 6) * vc + l]);
                __m512i y6 = _mm512_loadu_si512(&B_t[(j * 8 + 6) * vc + l]);
                __m512i x7 = _mm512_loadu_si512(&A_v[(i * 8 + 7) * vc + l]);
                __m512i y7 = _mm512_loadu_si512(&B_t[(j * 8 + 7) * vc + l]);

                process_result(x0, x1, y0, y1, y2, y3, y4, y5, y6, y7, result0);
                process_result(x2, x3, y0, y1, y2, y3, y4, y5, y6, y7, result1);
                process_result(x4, x5, y0, y1, y2, y3, y4, y5, y6, y7, result2);
                process_result(x6, x7, y0, y1, y2, y3, y4, y5, y6, y7, result3);
            }
            int x_base, y_base;
            
            x_base = i * nb;
            y_base = j * nb;

            insert_result(x_base + 0, y_base, m, n, result0, C);
            insert_result(x_base + 2, y_base, m, n, result1, C);
            insert_result(x_base + 4, y_base, m, n, result2, C);
            insert_result(x_base + 6, y_base, m, n, result3, C);
        }
    }
}