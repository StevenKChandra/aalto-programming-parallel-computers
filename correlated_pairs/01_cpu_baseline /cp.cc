/*
This is the function you need to implement. Quick reference:
- input rows: 0 <= y < ny
- input columns: 0 <= x < nx
- element at row y and column x is stored in data[x + y*nx]
- correlation between rows i and row j has to be stored in result[i + j*ny]
- only parts with 0 <= j <= i < ny need to be filled
*/

#include <cmath>

void correlate(int ny, int nx, const float *data, float *result) {
    double* row_average = new double[ny] {0};

    // row average calculation
    for (int i = 0; i < ny; i++) {
        const float* x = data + i*nx;

        for (int k = 0; k < nx; k++) {
            row_average[i] += x[k];
        }
        row_average[i] /= nx;
    }

    // x_average - x_i and (sigma x_average - x_i) square calculation
    double* xbar_xi = new double[ny * nx];
    double* xbar_xi_sqr = new double[ny] {0.0f};

    for (int i = 0; i < ny; i++) {
        double* xrow = xbar_xi + i * nx;
        const float* drow = data + i * nx;
        double average = row_average[i];

        for (int j = 0; j < nx; j++) {
            xrow[j] = average - drow[j];
        }

        for (int j = 0; j < nx; j++) {
            double x = xrow[j];
            xbar_xi_sqr[i] += x * x;
        }
    }
    delete[] row_average;

    // pearson correlation calculation
    for (int i = 0; i < ny; i++) {   
        const double* x = xbar_xi + i * nx;
        
        for (int j = 0; j < i; j++) {
            const double *y = xbar_xi + j * nx;
            double numerator = 0.0f;

            for (int k = 0; k < nx; k++){
                numerator += x[k] * y[k];
            }
            result[i + j*ny] = (float) (numerator / sqrt(xbar_xi_sqr[i] * xbar_xi_sqr[j]));
        }
        result[i + i*ny] = 1.0f;
    }

    delete[] xbar_xi;
    delete[] xbar_xi_sqr;
}