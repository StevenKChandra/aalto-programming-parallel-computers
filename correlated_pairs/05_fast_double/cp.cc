#include <algorithm>
#include <cmath>
#include <tuple>
#include <vector>
#include <x86intrin.h>

typedef double double8_t __attribute__ ((vector_size (8 * sizeof(double))));

constexpr double8_t d8zero {
    0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f
};

constexpr int vs = 8; // number of double type that fits into a vector register
constexpr int nb = 8; // number of block size to process each iteration

static inline double8_t permute4_lower(double8_t& vec0, double8_t& vec1) {
    return _mm512_permutex2var_pd(vec0, _mm512_set_epi64(11, 10, 9, 8, 3, 2, 1, 0) ,vec1);
}

static inline double8_t permute4_upper(double8_t& vec0, double8_t& vec1) {
    return _mm512_permutex2var_pd(vec0, _mm512_set_epi64(15, 14, 13, 12, 7, 6, 5, 4) ,vec1);
}

static inline double8_t permute2_lower(double8_t& vec0, double8_t& vec1) {
    return _mm512_permutex2var_pd(vec0, _mm512_set_epi64(13, 12, 9, 8, 5, 4, 1, 0) ,vec1);
}

static inline double8_t permute2_upper(double8_t& vec0, double8_t& vec1) {
    return _mm512_permutex2var_pd(vec0, _mm512_set_epi64(15, 14, 11, 10, 7, 6, 3, 2) ,vec1);
}

static inline double8_t permute1_lower(double8_t& vec0, double8_t& vec1) {
    return _mm512_permutex2var_pd(vec0, _mm512_set_epi64(14, 12, 10, 8, 6, 4, 2, 0) ,vec1);
}

static inline double8_t permute1_upper(double8_t& vec0, double8_t& vec1) {
    return _mm512_permutex2var_pd(vec0, _mm512_set_epi64(15, 13, 11, 9, 7, 5, 3, 1) ,vec1);
}

static inline void horizontal_add(double8_t &result, double8_t &vec0,
    double8_t &vec1, double8_t &vec2, double8_t &vec3, double8_t &vec4,
    double8_t &vec5, double8_t &vec6, double8_t &vec7) {
    double8_t tmp0, tmp1, tmp2, tmp3, tmp4, tmp5;
    // A0 A1 A2 A3 B0 B1 B2 B3
    tmp0 = permute4_lower(vec0, vec1);
    // print_vector(tmp0);
    // A4 A5 A6 A7 B4 B5 B6 B7
    tmp1 = permute4_upper(vec0, vec1);
    // print_vector(tmp1);
    // A04 A15 A26 A37 B04 B15 B26 B37
    tmp0 = tmp0 + tmp1;
    // print_vector(tmp0);
    // C0 C1 C2 C3 D0 D1 D2 D3
    tmp4 = permute4_lower(vec2, vec3);
    // C4 C5 C6 C7 D4 D5 D6 D7
    tmp5 = permute4_upper(vec2, vec3);
    // C04 C15 C26 C37 D04 D15 D26 D37
    tmp4 = tmp4 + tmp5;
    // A04 A15 B04 B15 C04 C15 D04 D15
    tmp2 = permute2_lower(tmp0, tmp4);
    // A26 A37 B26 B37 C26 C37 D26 D37
    tmp3 = permute2_upper(tmp0, tmp4);
    // A0426 A1537 B0426 B1537 C0426 C1537 D0426 D1537
    tmp4 = tmp2 + tmp3;
    // print_vector(tmp4);
    // E0 E1 E2 E3 F0 F1 F2 F3
    tmp0 = permute4_lower(vec4, vec5);
    // E4 E5 E6 E7 F4 F5 F6 F7
    tmp1 = permute4_upper(vec4, vec5);
    // E04 E15 E26 E37 F04 F15 F26 F37
    tmp0 = tmp0 + tmp1;
    // G0 G1 G2 G3 H0 H1 H2 H3
    tmp2 = permute4_lower(vec6, vec7);
    // G4 G5 G6 G7 H4 H5 H6 H7
    tmp3 = permute4_upper(vec6, vec7);
    // G04 G15 G26 G37 H04 H15 H26 H37
    tmp2 = tmp2 + tmp3;
    // E04 E15 F04 F15 G04 G15 H04 H15
    tmp3 = permute2_lower(tmp0, tmp2);
    // E26 E37 F26 F37 G26 G37 H26 H37
    tmp5 = permute2_upper(tmp0, tmp2);
    // E0426 E1537 F0426 F1537 G0426 G1537 H0426 H1537
    tmp5 = tmp3 + tmp5;
    // A0123 B0123 C0123 D0123 E0123 F0123 G0123 H0123
    tmp2 = permute1_lower(tmp4, tmp5);
    // A4567 B4567 C4567 D4567 E4567 F4567 G4567 H4567
    tmp3 = permute1_upper(tmp4, tmp5);
    result += tmp2 + tmp3;
}

static inline void multiply_and_horizontal_add(double8_t &result, double8_t &A,
    double8_t &B0, double8_t &B1, double8_t &B2, double8_t &B3,
    double8_t &B4, double8_t &B5, double8_t &B6, double8_t &B7)
{
    double8_t prod0, prod1;
    double8_t tmp0, tmp1, tmp2, tmp3, tmp4, tmp5;
    prod0 = A * B0;
    prod1 = A * B1;
    // A0 A1 A2 A3 B0 B1 B2 B3
    tmp0 = permute4_lower(prod0, prod1);
    // A4 A5 A6 A7 B4 B5 B6 B7
    tmp1 = permute4_upper(prod0, prod1);
    // A04 A15 A26 A37 B04 B15 B26 B37
    tmp0 = tmp0 + tmp1;
    prod0 = A * B2;
    prod1 = A * B3;
    // C0 C1 C2 C3 D0 D1 D2 D3
    tmp4 = permute4_lower(prod0, prod1);
    // C4 C5 C6 C7 D4 D5 D6 D7
    tmp5 = permute4_upper(prod0, prod1);
    // C04 C15 C26 C37 D04 D15 D26 D37
    tmp4 = tmp4 + tmp5;
    // A04 A15 B04 B15 C04 C15 D04 D15
    tmp2 = permute2_lower(tmp0, tmp4);
    // A26 A37 B26 B37 C26 C37 D26 D37
    tmp3 = permute2_upper(tmp0, tmp4);
    // A0426 A1537 B0426 B1537 C0426 C1537 D0426 D1537
    tmp4 = tmp2 + tmp3;
    prod0 = A * B4;
    prod1 = A * B5;
    // E0 E1 E2 E3 F0 F1 F2 F3
    tmp0 = permute4_lower(prod0, prod1);
    // E4 E5 E6 E7 F4 F5 F6 F7
    tmp1 = permute4_upper(prod0, prod1);
    // E04 E15 E26 E37 F04 F15 F26 F37
    tmp0 = tmp0 + tmp1;
    prod0 = A * B6;
    prod1 = A * B7;
    // G0 G1 G2 G3 H0 H1 H2 H3
    tmp2 = permute4_lower(prod0, prod1);
    // G4 G5 G6 G7 H4 H5 H6 H7
    tmp3 = permute4_upper(prod0, prod1);
    // G04 G15 G26 G37 H04 H15 H26 H37
    tmp2 = tmp2 + tmp3;
    // E04 E15 F04 F15 G04 G15 H04 H15
    tmp3 = permute2_lower(tmp0, tmp2);
    // E26 E37 F26 F37 G26 G37 H26 H37
    tmp5 = permute2_upper(tmp0, tmp2);
    // E0426 E1537 F0426 F1537 G0426 G1537 H0426 H1537
    tmp5 = tmp3 + tmp5;
    // A0123 B0123 C0123 D0123 E0123 F0123 G0123 H0123
    tmp2 = permute1_lower(tmp4, tmp5);
    // A4567 B4567 C4567 D4567 E4567 F4567 G4567 H4567
    tmp3 = permute1_upper(tmp4, tmp5);
    result += tmp2 + tmp3;
}

static inline __m512d fill_vector(const double x) {
    return _mm512_set_pd( x, x, x, x, x, x, x, x );
}

/*
This is the function you need to implement. Quick reference:
- input rows: 0 <= y < ny
- input columns: 0 <= x < nx
- element at row y and column x is stored in data[x + y*nx]
- correlation between rows i and row j has to be stored in result[i + j*ny]
- only parts with 0 <= j <= i < ny need to be filled
*/
void correlate(int ny, int nx, const float *data, float *result) {
    const int vc = (nx - 1 + vs) / vs; // number of vector column
    const int nv = nx / vs; // number of iteration using vector
    const int nr = nx % vs; // remander of iteration not using vector
    const int nc = (ny + nb - 1) / nb; // number of blocks of rows
    const int np = nb * nc; // number of rows after padding

    // load the data into the vector
    std::vector<double8_t> data_(np * vc);
    #pragma omp parallel for
    for (int i = 0; i < nc; i++) {
        for (int j = 0; j < vc; j++) {
            double8_t tmp0;
            double8_t tmp1;
            double8_t tmp2;
            double8_t tmp3;
            double8_t tmp4;
            double8_t tmp5;
            double8_t tmp6;
            double8_t tmp7;
            for (int k = 0; k < vs; k++) {
                tmp0[k] = (i * 8 + 0) < ny && (j * vs + k) < nx ? data[(i * 8 + 0) * nx + j * vs + k] : 0.0f;
                tmp1[k] = (i * 8 + 1) < ny && (j * vs + k) < nx ? data[(i * 8 + 1) * nx + j * vs + k] : 0.0f;
                tmp2[k] = (i * 8 + 2) < ny && (j * vs + k) < nx ? data[(i * 8 + 2) * nx + j * vs + k] : 0.0f;
                tmp3[k] = (i * 8 + 3) < ny && (j * vs + k) < nx ? data[(i * 8 + 3) * nx + j * vs + k] : 0.0f;
                tmp4[k] = (i * 8 + 4) < ny && (j * vs + k) < nx ? data[(i * 8 + 4) * nx + j * vs + k] : 0.0f;
                tmp5[k] = (i * 8 + 5) < ny && (j * vs + k) < nx ? data[(i * 8 + 5) * nx + j * vs + k] : 0.0f;
                tmp6[k] = (i * 8 + 6) < ny && (j * vs + k) < nx ? data[(i * 8 + 6) * nx + j * vs + k] : 0.0f;
                tmp7[k] = (i * 8 + 7) < ny && (j * vs + k) < nx ? data[(i * 8 + 7) * nx + j * vs + k] : 0.0f;
            }
            data_[(i * 8 + 0) * vc + j] = tmp0;
            data_[(i * 8 + 1) * vc + j] = tmp1;
            data_[(i * 8 + 2) * vc + j] = tmp2;
            data_[(i * 8 + 3) * vc + j] = tmp3;
            data_[(i * 8 + 4) * vc + j] = tmp4;
            data_[(i * 8 + 5) * vc + j] = tmp5;
            data_[(i * 8 + 6) * vc + j] = tmp6;
            data_[(i * 8 + 7) * vc + j] = tmp7;
        }
    }
    // row average calculation
    std::vector<double> ra (np); // row average
    #pragma omp parallel for
    for (int i = 0; i < nc; i++) {
        double8_t sum0 = d8zero;
        double8_t sum1 = d8zero;
        double8_t sum2 = d8zero;
        double8_t sum3 = d8zero;
        double8_t sum4 = d8zero;
        double8_t sum5 = d8zero;
        double8_t sum6 = d8zero;
        double8_t sum7 = d8zero;
        for (int j = 0; j < vc; j++) {
            sum0 += data_[(i * 8 + 0) * vc  + j];
            sum1 += data_[(i * 8 + 1) * vc  + j];
            sum2 += data_[(i * 8 + 2) * vc  + j];
            sum3 += data_[(i * 8 + 3) * vc  + j];
            sum4 += data_[(i * 8 + 4) * vc  + j];
            sum5 += data_[(i * 8 + 5) * vc  + j];
            sum6 += data_[(i * 8 + 6) * vc  + j];
            sum7 += data_[(i * 8 + 7) * vc  + j];
        }
        double8_t sum = d8zero;
        horizontal_add(sum, sum0, sum1, sum2, sum3, sum4, sum5, sum6, sum7);
        ra[i * 8 + 0] = sum[0] / nx;
        ra[i * 8 + 1] = sum[1] / nx;
        ra[i * 8 + 2] = sum[2] / nx;
        ra[i * 8 + 3] = sum[3] / nx;
        ra[i * 8 + 4] = sum[4] / nx;
        ra[i * 8 + 5] = sum[5] / nx;
        ra[i * 8 + 6] = sum[6] / nx;
        ra[i * 8 + 7] = sum[7] / nx;
    }
    // xbar - xi and sigma (xbar - xi) square calculation
    std::vector<double> xbar_xi_sq (np);
    #pragma omp parallel for
    for (int i = 0; i < nc; i++) {
        double8_t average0 = fill_vector(ra[i * 8 + 0]);
        double8_t average1 = fill_vector(ra[i * 8 + 1]);
        double8_t average2 = fill_vector(ra[i * 8 + 2]);
        double8_t average3 = fill_vector(ra[i * 8 + 3]);
        double8_t average4 = fill_vector(ra[i * 8 + 4]);
        double8_t average5 = fill_vector(ra[i * 8 + 5]);
        double8_t average6 = fill_vector(ra[i * 8 + 6]);
        double8_t average7 = fill_vector(ra[i * 8 + 7]);
        double8_t xbar_xi_sq0 = d8zero;
        double8_t xbar_xi_sq1 = d8zero;
        double8_t xbar_xi_sq2 = d8zero;
        double8_t xbar_xi_sq3 = d8zero;
        double8_t xbar_xi_sq4 = d8zero;
        double8_t xbar_xi_sq5 = d8zero;
        double8_t xbar_xi_sq6 = d8zero;
        double8_t xbar_xi_sq7 = d8zero;
        for (int j = 0; j < nv; j++) {
            data_[(i * 8 + 0) * vc + j] -= average0;
            data_[(i * 8 + 1) * vc + j] -= average1;
            data_[(i * 8 + 2) * vc + j] -= average2;
            data_[(i * 8 + 3) * vc + j] -= average3;
            data_[(i * 8 + 4) * vc + j] -= average4;
            data_[(i * 8 + 5) * vc + j] -= average5;
            data_[(i * 8 + 6) * vc + j] -= average6;
            data_[(i * 8 + 7) * vc + j] -= average7;
            xbar_xi_sq0 += data_[(i * 8 + 0) * vc + j] * data_[(i * 8 + 0) * vc + j];
            xbar_xi_sq1 += data_[(i * 8 + 1) * vc + j] * data_[(i * 8 + 1) * vc + j];
            xbar_xi_sq2 += data_[(i * 8 + 2) * vc + j] * data_[(i * 8 + 2) * vc + j];
            xbar_xi_sq3 += data_[(i * 8 + 3) * vc + j] * data_[(i * 8 + 3) * vc + j];
            xbar_xi_sq4 += data_[(i * 8 + 4) * vc + j] * data_[(i * 8 + 4) * vc + j];
            xbar_xi_sq5 += data_[(i * 8 + 5) * vc + j] * data_[(i * 8 + 5) * vc + j];
            xbar_xi_sq6 += data_[(i * 8 + 6) * vc + j] * data_[(i * 8 + 6) * vc + j];
            xbar_xi_sq7 += data_[(i * 8 + 7) * vc + j] * data_[(i * 8 + 7) * vc + j];
        }
        for (int j = 0; j < nr; j++) {
            data_[(i * 8 + 0) * vc + nv][j] -= ra[i * 8 + 0];
            data_[(i * 8 + 1) * vc + nv][j] -= ra[i * 8 + 1];
            data_[(i * 8 + 2) * vc + nv][j] -= ra[i * 8 + 2];
            data_[(i * 8 + 3) * vc + nv][j] -= ra[i * 8 + 3];
            data_[(i * 8 + 4) * vc + nv][j] -= ra[i * 8 + 4];
            data_[(i * 8 + 5) * vc + nv][j] -= ra[i * 8 + 5];
            data_[(i * 8 + 6) * vc + nv][j] -= ra[i * 8 + 6];
            data_[(i * 8 + 7) * vc + nv][j] -= ra[i * 8 + 7];
            xbar_xi_sq0[j] += data_[(i * 8 + 0) * vc + nv][j] * data_[(i * 8 + 0) * vc + nv][j];
            xbar_xi_sq1[j] += data_[(i * 8 + 1) * vc + nv][j] * data_[(i * 8 + 1) * vc + nv][j];
            xbar_xi_sq2[j] += data_[(i * 8 + 2) * vc + nv][j] * data_[(i * 8 + 2) * vc + nv][j];
            xbar_xi_sq3[j] += data_[(i * 8 + 3) * vc + nv][j] * data_[(i * 8 + 3) * vc + nv][j];
            xbar_xi_sq4[j] += data_[(i * 8 + 4) * vc + nv][j] * data_[(i * 8 + 4) * vc + nv][j];
            xbar_xi_sq5[j] += data_[(i * 8 + 5) * vc + nv][j] * data_[(i * 8 + 5) * vc + nv][j];
            xbar_xi_sq6[j] += data_[(i * 8 + 6) * vc + nv][j] * data_[(i * 8 + 6) * vc + nv][j];
            xbar_xi_sq7[j] += data_[(i * 8 + 7) * vc + nv][j] * data_[(i * 8 + 7) * vc + nv][j];
        }
        double8_t sum = d8zero;
        horizontal_add(sum, xbar_xi_sq0, xbar_xi_sq1, xbar_xi_sq2, xbar_xi_sq3, xbar_xi_sq4, xbar_xi_sq5, xbar_xi_sq6, xbar_xi_sq7);
        // print_vector(sum);
        xbar_xi_sq[i * 8 + 0] = sqrt(sum[0]);
        xbar_xi_sq[i * 8 + 1] = sqrt(sum[1]);
        xbar_xi_sq[i * 8 + 2] = sqrt(sum[2]);
        xbar_xi_sq[i * 8 + 3] = sqrt(sum[3]);
        xbar_xi_sq[i * 8 + 4] = sqrt(sum[4]);
        xbar_xi_sq[i * 8 + 5] = sqrt(sum[5]);
        xbar_xi_sq[i * 8 + 6] = sqrt(sum[6]);
        xbar_xi_sq[i * 8 + 7] = sqrt(sum[7]);
    }

    std::vector<std::tuple<int, int, int>> iteration_index (((nc + 1) * nc) / 2);
    for (int i = 0; i < nc; i++) {
        for (int j = i; j < nc; j++) {
            int ijc = _pdep_u32(i, 0x55555555) | _pdep_u32(j, 0xAAAAAAAA);
            iteration_index[(2 * nc * i - i * (i - 1)) / 2 + (j - i)] = std::make_tuple(ijc, i, j);
        }
    }
    std::sort(iteration_index.begin(), iteration_index.end());
    // pearson correlation calculation
    #pragma omp parallel for schedule(dynamic, 8)
    for (auto t = iteration_index.begin(); t < iteration_index.end(); t++) {        
        int i = std::get<1>(*t);
        int j = std::get<2>(*t);
        double8_t result0 = d8zero;
        double8_t result1 = d8zero;
        double8_t result2 = d8zero;
        double8_t result3 = d8zero;
        double8_t result4 = d8zero;
        double8_t result5 = d8zero;
        double8_t result6 = d8zero;
        double8_t result7 = d8zero;
        for (int k = 0; k < vc; k++) {
            constexpr int PF = vs;
            __builtin_prefetch(&data_[(i * 8 + 0) * vc + k + PF]);
            __builtin_prefetch(&data_[(j * 8 + 0) * vc + k + PF]);
            __builtin_prefetch(&data_[(i * 8 + 1) * vc + k + PF]);
            __builtin_prefetch(&data_[(j * 8 + 1) * vc + k + PF]);
            __builtin_prefetch(&data_[(i * 8 + 2) * vc + k + PF]);
            __builtin_prefetch(&data_[(j * 8 + 2) * vc + k + PF]);
            __builtin_prefetch(&data_[(i * 8 + 3) * vc + k + PF]);
            __builtin_prefetch(&data_[(j * 8 + 3) * vc + k + PF]);
            __builtin_prefetch(&data_[(i * 8 + 4) * vc + k + PF]);
            __builtin_prefetch(&data_[(j * 8 + 4) * vc + k + PF]);
            __builtin_prefetch(&data_[(i * 8 + 5) * vc + k + PF]);
            __builtin_prefetch(&data_[(j * 8 + 5) * vc + k + PF]);
            __builtin_prefetch(&data_[(i * 8 + 6) * vc + k + PF]);
            __builtin_prefetch(&data_[(j * 8 + 6) * vc + k + PF]);
            __builtin_prefetch(&data_[(i * 8 + 7) * vc + k + PF]);
            __builtin_prefetch(&data_[(j * 8 + 7) * vc + k + PF]);
            double8_t x0, x1;
            double8_t y0 = data_[(j * 8 + 0) * vc + k];
            double8_t y1 = data_[(j * 8 + 1) * vc + k];
            double8_t y2 = data_[(j * 8 + 2) * vc + k];
            double8_t y3 = data_[(j * 8 + 3) * vc + k];
            double8_t y4 = data_[(j * 8 + 4) * vc + k];
            double8_t y5 = data_[(j * 8 + 5) * vc + k];
            double8_t y6 = data_[(j * 8 + 6) * vc + k];
            double8_t y7 = data_[(j * 8 + 7) * vc + k];

            x0 = i * 8 + 0 >= ny ? d8zero : data_[(i * 8 + 0) * vc + k];
            multiply_and_horizontal_add(result0, x0, y0, y1, y2, y3, y4, y5, y6, y7);
            x1 = i * 8 + 1 >= ny ? d8zero : data_[(i * 8 + 1) * vc + k];
            multiply_and_horizontal_add(result1, x1, y0, y1, y2, y3, y4, y5, y6, y7);
            x0 = i * 8 + 2 >= ny ? d8zero : data_[(i * 8 + 2) * vc + k];
            multiply_and_horizontal_add(result2, x0, y0, y1, y2, y3, y4, y5, y6, y7);
            x1 = i * 8 + 3 >= ny ? d8zero : data_[(i * 8 + 3) * vc + k];
            multiply_and_horizontal_add(result3, x1, y0, y1, y2, y3, y4, y5, y6, y7);
            x0 = i * 8 + 4 >= ny ? d8zero : data_[(i * 8 + 4) * vc + k];
            multiply_and_horizontal_add(result4, x0, y0, y1, y2, y3, y4, y5, y6, y7);
            x1 = i * 8 + 5 >= ny ? d8zero : data_[(i * 8 + 5) * vc + k];
            multiply_and_horizontal_add(result5, x1, y0, y1, y2, y3, y4, y5, y6, y7);
            x0 = i * 8 + 6 >= ny ? d8zero : data_[(i * 8 + 6) * vc + k];
            multiply_and_horizontal_add(result6, x0, y0, y1, y2, y3, y4, y5, y6, y7);
            x1 = i * 8 + 7 >= ny ? d8zero : data_[(i * 8 + 7) * vc + k];
            multiply_and_horizontal_add(result7, x1, y0, y1, y2, y3, y4, y5, y6, y7);
        }
        for (int k = 0; k < vs; k++) {
            if (j * 8 + k >= ny) continue;
            if (i * 8 + 0 >= ny || j * 8 + 0 < i * 8 + 0) continue;
            result[(i * 8 + 0) * ny + j * 8 + k] = (result0[k] / xbar_xi_sq[i * 8 + 0] / xbar_xi_sq[j * 8 + k]);
            if (i * 8 + 1 >= ny || j * 8 + 1 < i * 8 + 1) continue;
            result[(i * 8 + 1) * ny + j * 8 + k] = (result1[k] / xbar_xi_sq[i * 8 + 1] / xbar_xi_sq[j * 8 + k]);
            if (i * 8 + 2 >= ny || j * 8 + 2 < i * 8 + 2) continue;
            result[(i * 8 + 2) * ny + j * 8 + k] = (result2[k] / xbar_xi_sq[i * 8 + 2] / xbar_xi_sq[j * 8 + k]);
            if (i * 8 + 3 >= ny || j * 8 + 3 < i * 8 + 3) continue;
            result[(i * 8 + 3) * ny + j * 8 + k] = (result3[k] / xbar_xi_sq[i * 8 + 3] / xbar_xi_sq[j * 8 + k]);
            if (i * 8 + 4 >= ny || j * 8 + 4 < i * 8 + 4) continue;
            result[(i * 8 + 4) * ny + j * 8 + k] = (result4[k] / xbar_xi_sq[i * 8 + 4] / xbar_xi_sq[j * 8 + k]);
            if (i * 8 + 5 >= ny || j * 8 + 5 < i * 8 + 5) continue;
            result[(i * 8 + 5) * ny + j * 8 + k] = (result5[k] / xbar_xi_sq[i * 8 + 5] / xbar_xi_sq[j * 8 + k]);
            if (i * 8 + 6 >= ny || j * 8 + 6 < i * 8 + 6) continue;
            result[(i * 8 + 6) * ny + j * 8 + k] = (result6[k] / xbar_xi_sq[i * 8 + 6] / xbar_xi_sq[j * 8 + k]);
            if (i * 8 + 7 >= ny || j * 8 + 7 < i * 8 + 7) continue;
            result[(i * 8 + 7) * ny + j * 8 + k] = (result7[k] / xbar_xi_sq[i * 8 + 7] / xbar_xi_sq[j * 8 + k]);
        }
    }
}