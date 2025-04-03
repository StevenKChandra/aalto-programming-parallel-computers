#include "mm.h"
#include <vector>

#define THRESHOLD 1000

/*
This is the function you need to implement. Quick reference:
 matrix A: (m, k); A[i, j] = A[i*k + j]
 matrix B: (k, n); B[i, j] = B[i+n + j]
 matrix C: (m, n); C[i, j] = C[i*n + j]
*/
void gemm(int m, int n, int k, const std::int8_t *A, const std::int8_t *B, std::int32_t *C) {
    if (m < THRESHOLD && n < THRESHOLD && k < THRESHOLD) {
        // matrix multiplication
        for (int i = 0; i < m; i++) {
            for (int j = 0; j < n; j++) {
                C[i * n + j] = 0;
                for (int l = 0; l < k; l++) {
                    C[i * n + j] += A[i * k + l] * B[l * n + j];
                }
            }
        }
        return;
    }

    std::vector<int8_t> A_v (m * k);
    std::vector<int8_t> B_t (n * k);

    // move the data into vector
    for (int i = 0; i < k; i++) {
        for (int j = 0; j < m; j++) {
            A_v[j * k + i] = A[j * k + i];
        }
        for (int j = 0; j < n; j++) {
            B_t[j * k + i] = B[i * n + j];
        }
    }

    // matrix multiplication
    for (int i = 0; i < m; i++) {
        for (int j = 0; j < n; j++) {
            C[i * n + j] = 0;
            for (int l = 0; l < k; l++) {
                C[i * n + j] += A_v[i * k + l] * B_t[j * k + l];
            }
        }
    }
    return;
}