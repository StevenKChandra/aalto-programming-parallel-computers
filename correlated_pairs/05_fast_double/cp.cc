/*
This is the function you need to implement. Quick reference:
- input rows: 0 <= y < ny
- input columns: 0 <= x < nx
- element at row y and column x is stored in data[x + y*nx]
- correlation between rows i and row j has to be stored in result[i + j*ny]
- only parts with 0 <= j <= i < ny need to be filled
*/
#include <cmath>
#include <vector>
#include <x86intrin.h>

typedef double double4_t __attribute__ ((vector_size (4 * sizeof(double))));

constexpr double4_t d4zero {
    0.0f, 0.0f, 0.0f, 0.0f
};

constexpr int vs = 4; // number of double type that fits into a vector register
constexpr int nb = 4; // number of block size to process each iteration

void correlate(int ny, int nx, const float *data, float *result) {
    // TODO: try using the AVX 512 instruction and cachee reuse

    const int vc = (nx - 1 + vs) / vs; // number of vector column
    const int nv = nx / vs; // number of iteration using vector
    const int nr = nx % vs; // remander of iteration not using vector
    const int nc = (ny + nb - 1) / nb; // number of blocks of rows
    const int np = nb * nc; // number of rows after padding

    // load the data into the vector
    std::vector<double4_t> data_(np * vc, d4zero);
    #pragma omp parallel for
    for (int i = 0; i < ny; i++) {
        const float* row = data + i * nx;
        for (int j = 0; j < nv; j++) {
            data_[i * vc + j][0] = row[j * vs + 0];
            data_[i * vc + j][1] = row[j * vs + 1];
            data_[i * vc + j][2] = row[j * vs + 2];
            data_[i * vc + j][3] = row[j * vs + 3];
        }
        for (int j = 0; j < nr; j++) {
            data_[i * vc + nv][j] = row[(nv) * vs + j];
        }
    }

    // row average calculation
    std::vector<double> ra (ny, 0.0f); // row average
    #pragma omp parallel for
    for (int i = 0; i < ny; i++) {
        double4_t sum4[4] { d4zero, d4zero, d4zero, d4zero};
        for (int j = 0; j < vc / 4; j++) {
            sum4[0] += data_[i * vc + j * 4 + 0];
            sum4[1] += data_[i * vc + j * 4 + 1];
            sum4[2] += data_[i * vc + j * 4 + 2];
            sum4[3] += data_[i * vc + j * 4 + 3];
        }
        for (int j = 0; j < vc % 4; j++) {
            sum4[j] += data_[i * vc + vc / 4 * 4 + j];
        }

        double sum[4] = { 0.0f, 0.0f, 0.0f, 0.0f };
        for (int j = 0; j < vs; j++) {
            sum[0] += sum4[j][0];
            sum[1] += sum4[j][1];
            sum[2] += sum4[j][2];
            sum[3] += sum4[j][3];
        }
        
        ra[i] = (sum[0] + sum[1] + sum[2] + sum[3]) / nx;
    }

    // xbar - xi and sigma (xbar - xi) square calculation
    std::vector<double> xbar_xi_sq (ny, 0.0f);
    #pragma omp parallel for
    for (int i = 0; i < ny; i++) {
        double4_t average4 = { ra[i], ra[i], ra[i], ra[i] };
        for (int j = 0; j < nv / 4; j++) {
            double4_t xbar_xi[4] { d4zero, d4zero, d4zero, d4zero };

            xbar_xi[0] = average4 - data_[i * vc + j * 4 + 0];
            xbar_xi[1] = average4 - data_[i * vc + j * 4 + 1];
            xbar_xi[2] = average4 - data_[i * vc + j * 4 + 2];
            xbar_xi[3] = average4 - data_[i * vc + j * 4 + 3];

            data_[i * vc + j * 4 + 0] = xbar_xi[0];
            data_[i * vc + j * 4 + 1] = xbar_xi[1];
            data_[i * vc + j * 4 + 2] = xbar_xi[2];
            data_[i * vc + j * 4 + 3] = xbar_xi[3];

            xbar_xi[0] *= xbar_xi[0];
            xbar_xi[1] *= xbar_xi[1];
            xbar_xi[2] *= xbar_xi[2];
            xbar_xi[3] *= xbar_xi[3];

            xbar_xi_sq[i] += xbar_xi[0][0] + xbar_xi[0][1] + xbar_xi[0][2] + xbar_xi[0][3];
            xbar_xi_sq[i] += xbar_xi[1][0] + xbar_xi[1][1] + xbar_xi[1][2] + xbar_xi[1][3];
            xbar_xi_sq[i] += xbar_xi[2][0] + xbar_xi[2][1] + xbar_xi[2][2] + xbar_xi[2][3];
            xbar_xi_sq[i] += xbar_xi[3][0] + xbar_xi[3][1] + xbar_xi[3][2] + xbar_xi[3][3];
        }
        for (int j = 0; j < nv % 4; j++) {
            double4_t xbar_xi = average4 - data_[i * vc + nv / 4 * 4 + j];
            data_[i * vc + nv / 4 * 4 + j] = xbar_xi;
            xbar_xi *= xbar_xi;
            xbar_xi_sq[i] += xbar_xi[0] + xbar_xi[1] + xbar_xi[2] + xbar_xi[3];
        }

        double4_t xbar_xi = average4 - data_[i * vc + vc - 1];
        for (int j = 0; j < nr; j++) {
            data_[i * vc + vc - 1][j] = xbar_xi[j];
        }
        xbar_xi *= xbar_xi;
        for (int j = 0; j < nr; j++) {
            xbar_xi_sq[i] += xbar_xi[j];
        }
        xbar_xi_sq[i] = sqrt(xbar_xi_sq[i]);
    }

    // pearson correlation calculation
    #pragma omp parallel for schedule (dynamic, 8)
    for (int i = 0; i < nc; i++) {
        for (int j = i; j < nc; j++) {
            double4_t result0 = d4zero;
            double4_t result1 = d4zero;
            double4_t result2 = d4zero;
            double4_t result3 = d4zero;
            for (int k = 0; k < vc; k++) {
                // asm("# foo");
                // constexpr int PF = 2;
                // __builtin_prefetch(&data_[(i * 4 + 0) * vc + k + PF]);
                // __builtin_prefetch(&data_[(i * 4 + 1) * vc + k + PF]);
                // __builtin_prefetch(&data_[(i * 4 + 2) * vc + k + PF]);
                // __builtin_prefetch(&data_[(i * 4 + 3) * vc + k + PF]);
                // __builtin_prefetch(&data_[(j * 4 + 0) * vc + k + PF]);
                // __builtin_prefetch(&data_[(j * 4 + 1) * vc + k + PF]);
                // __builtin_prefetch(&data_[(j * 4 + 2) * vc + k + PF]);
                // __builtin_prefetch(&data_[(j * 4 + 3) * vc + k + PF]);
                double4_t x0 = data_[(i * 4 + 0) * vc + k];
                double4_t x1 = data_[(i * 4 + 1) * vc + k];
                double4_t x2 = data_[(i * 4 + 2) * vc + k];
                double4_t x3 = data_[(i * 4 + 3) * vc + k];
                double4_t y0 = data_[(j * 4 + 0) * vc + k];
                double4_t y1 = data_[(j * 4 + 1) * vc + k];
                double4_t y2 = data_[(j * 4 + 2) * vc + k];
                double4_t y3 = data_[(j * 4 + 3) * vc + k];

                double4_t ab;
                double4_t cd;
                double4_t blend;
                double4_t perm;

                ab = _mm256_hadd_pd(x0 * y0, x0 * y1);
                cd = _mm256_hadd_pd(x1 * y0, x1 * y1);
                blend = _mm256_blend_pd(ab, cd, 0b1100);
                perm = _mm256_permute2f128_pd(ab, cd, 0x21);
                result0 += blend + perm;

                ab = _mm256_hadd_pd(x0 * y2, x0 * y3);
                cd = _mm256_hadd_pd(x1 * y2, x1 * y3);
                blend = _mm256_blend_pd(ab, cd, 0b1100);
                perm = _mm256_permute2f128_pd(ab, cd, 0x21);
                result1 += blend + perm;
                
                ab = _mm256_hadd_pd(x2 * y0, x2 * y1);
                cd = _mm256_hadd_pd(x3 * y0, x3 * y1);
                blend = _mm256_blend_pd(ab, cd, 0b1100);
                perm = _mm256_permute2f128_pd(ab, cd, 0x21);
                result2 += blend + perm;
                
                ab = _mm256_hadd_pd(x2 * y2, x2 * y3);
                cd = _mm256_hadd_pd(x3 * y2, x3 * y3);
                blend = _mm256_blend_pd(ab, cd, 0b1100);
                perm = _mm256_permute2f128_pd(ab, cd, 0x21);
                result3 += blend + perm;
            }
            for (int k = 0; k < 2; k++) {
                for (int l = 0; l < 2; l++) {
                    int x = i * nb + k;
                    int y = j * nb + l;
                    if (x >= ny || y >= ny || y < x ) continue;
                    result[x * ny + y] = result0[k * 2 + l] / (xbar_xi_sq[x] * xbar_xi_sq[y]);
                }
            }

            if (i * nb + 2 > ny) continue;
            for (int k = 0; k < 2; k++) {
                for (int l = 0; l < 2; l++) {
                    int x = i * nb + 2 + k;
                    int y = j * nb + l;
                    if (x >= ny || y >= ny || y < x ) continue;
                    result[x * ny + y] = result2[k * 2 + l] / (xbar_xi_sq[x] * xbar_xi_sq[y]);
                }
            }
            
            if (j * nb + 2 > ny) continue;
            for (int k = 0; k < 2; k++) {
                for (int l = 0; l < 2; l++) {
                    int x = i * nb + k;
                    int y = j * nb + 2 + l;
                    if (x >= ny || y >= ny || y < x ) continue;
                    result[x * ny + y] = result1[k * 2 + l] / (xbar_xi_sq[x] * xbar_xi_sq[y]);
                }
            }

            for (int k = 0; k < 2; k++) {
                for (int l = 0; l < 2; l++) {
                    int x = i * nb + 2 + k;
                    int y = j * nb + 2 + l;
                    if (x >= ny || y >= ny || y < x ) continue;
                    result[x * ny + y] = result3[k * 2 + l] / (xbar_xi_sq[x] * xbar_xi_sq[y]);
                }
            }
        }
    }
}