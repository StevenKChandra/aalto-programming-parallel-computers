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
    
    // number of pararell instruction
    const int np = 4;
    // number of row iteration that can be pararellized
    int ncol = nx / np;
    // the remainder
    int nrem = nx % np;
    // array of average of each matrix row
    double* row_average = new double[ny] {0};

    // main row average iteration, pararellized
    for (int i = 0; i < ny; i++) {   
        const float* row = data + i * nx;
        double total[np] = {0};
        for (int j = 0; j < ncol; j++) {
            for (int k = 0; k < np; k++){
                total[k] += row[j * np + k];
            }
        }
        for (int k = 0; k < nrem; k++){
            total[k] += row[ncol * np + k];
        }

        for (int k = 0; k < np; k++){
            row_average[i] += total[k];
        }
        row_average[i] /= nx;
    }

    // calculate x average - x_i
    double* xbar_xi = new double[ny * nx];
    double* xbar_xi_sqr = new double[ny] {0.0f};

    for (int i = 0; i < ny; i++) {
        double* xrow = xbar_xi + i * nx;
        const float* drow = data + i * nx;
        double average = row_average[i];
        for (int j = 0; j < ncol; j++) {
            for (int k = 0; k < np; k++){
                xrow[j * np + k] = average - drow[j * np + k];
            }
        }
        for (int k = 0; k < nrem; k++){
            xrow[ncol * np + k] = average - drow[ncol * np + k];;
        }

        for (int j = 0; j < ncol; j++) {
            for (int k = 0; k < np; k++){
                double x = xrow[j * np + k];
                xbar_xi_sqr[i] += x * x;
            }
        }
        for (int k = 0; k < nrem; k++){
            double x = xrow[ncol * np + k];
            xbar_xi_sqr[i] += x * x;
        }
    }
    delete[] row_average;

    // pearson correlation calculation
    for (int i = 0; i < ny; i++) {   
        const double* x = xbar_xi + i * nx;     
        for (int j = 0; j < i; j++) {
            const double *y = xbar_xi + j * nx;

            double numerator[np] = {0};

            // main pearson correlation iteration, pararellized
            for (int k = 0; k < ncol; k++){
                for (int l = 0; l < np; l++) {
                    numerator[l] += x[k * np + l] * y[k * np + l];
                }
            }

            // remainder iteration
            for (int l = 0; l < nrem; l++) {
                numerator[l] += x[ncol * np + l] * y[ncol * np + l];
            }
            
            double num = 0;

            for (int k = 0; k < np; k++) {
                num += numerator[k];
            }

            result[i + j*ny] = (float) (num / sqrt(xbar_xi_sqr[i] * xbar_xi_sqr[j]));
        }
        result[i + i*ny] = 1.0f;
    }

    delete[] xbar_xi;
    delete[] xbar_xi_sqr;
}