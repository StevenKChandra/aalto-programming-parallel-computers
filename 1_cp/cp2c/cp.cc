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

typedef double double4 __attribute__ ((vector_size (4 * sizeof(double))));

constexpr double4 d4zero {
    0.0f, 0.0f, 0.0f, 0.0f
};

void correlate(int ny, int nx, const float *data, float *result) {
    // ammount of the primitive type that fits into a vector register
    const int vector_size = 4;

    // number of coloumn in the vector
    int vector_col = (nx - 1 + vector_size) / vector_size;

    // number of vectorized interations
    const int np = nx / vector_size;
    
    // remainder iterations
    const int nrem = nx % vector_size;

    std::vector<std::vector<double4>> vectorized_data(ny, std::vector<double4>(vector_col, d4zero));
    
    // input the data into the vector
    for (int i = 0; i < ny; i++) {
        const float* row = data + i * nx;
        for (int j = 0; j < np; j++) {
            for (int k = 0; k < vector_size; k++){
                vectorized_data[i][j][k] = row[j * vector_size + k];
            }
        }
        for (int j = 0; j < nrem; j++) {
            vectorized_data[i][np][j] = row[(np) * vector_size + j];
        }
    }
    
    double* row_average = new double[ny] {0};
    // row average calculation
    for (int i = 0; i < ny; i++) {
        double4 sum = d4zero;
        for (int j = 0; j < vector_col; j++) {
            sum += vectorized_data[i][j];
        }
        for (int j = 0; j < vector_size; j++) {
            row_average[i] += sum[j];
        }
        row_average[i] /= nx;
    }

    // x_average - x_i and (sigma x_average - x_i) square calculation
    std::vector<std::vector<double4>> xbar_xi(ny, std::vector<double4>(vector_col, d4zero));
    double* xbar_xi_sq = new double[ny] {0.0f};
    
    for (int i = 0; i < ny; i++) {
        double4 average = {row_average[i], row_average[i], row_average[i], row_average[i]};
        for (int j = 0; j < np; j++) {
            double4 xbar_xi_calculation = average - vectorized_data[i][j];
            xbar_xi[i][j] = xbar_xi_calculation;
            xbar_xi_calculation *= xbar_xi_calculation;
            xbar_xi_sq[i] += xbar_xi_calculation[0] + xbar_xi_calculation[1] + xbar_xi_calculation[2] + xbar_xi_calculation[3];
        }

        double4 xbar_xi_calculation = average - vectorized_data[i][vector_col-1];
        for (int j = 0; j < nrem; j++) {
            xbar_xi[i][vector_col-1][j] = xbar_xi_calculation[j];
        }

        xbar_xi_calculation *= xbar_xi_calculation;
        for (int j = 0; j < nrem; j++) {
            xbar_xi_sq[i] += xbar_xi_calculation[j];
        }
    }
    delete[] row_average;

    // pearson correlation calculation
    for (int i = 0; i < ny; i++) {   
        
        for (int j = 0; j < i; j++) {
            double4 numerator4 = d4zero;
            for (int k = 0; k < vector_col; k++){
                numerator4 += xbar_xi[i][k] * xbar_xi[j][k];
            }
            double numerator = 0;
            for (int k = 0; k < vector_size; k++) {
                numerator += numerator4[k];
            }
            result[i + j*ny] = (float) (numerator / std::sqrt(xbar_xi_sq[i] * xbar_xi_sq[j]));
        }
        result[i + i*ny] = 1.0f;
    }
    delete[] xbar_xi_sq;
}