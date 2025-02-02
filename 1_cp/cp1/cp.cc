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
    for (int i = 0; i < ny; i++) {
        const float* x = data + i*nx;
        double x_average = 0;

        for (int k = 0; k < nx; k++) {
            x_average += x[k];
        }
        x_average /= nx;

        for (int j = 0; j <= i; j++) {
            const float *y = data + j*nx;
            double y_average = 0;

            for (int k = 0; k < nx; k++) {
                y_average += y[k];
            }
            y_average /= nx;

            double numerator = 0;
            double denumerator_left = 0;
            double denumerator_right = 0;
            for (int k = 0; k < nx; k++) {
                double x_cal = (x_average - x[k]);
                double y_cal = (y_average - y[k]);
                numerator += x_cal * y_cal;
                denumerator_left += x_cal * x_cal; 
                denumerator_right += y_cal * y_cal; 
            }
            result[i + j*ny] = static_cast<float> (numerator / sqrt(denumerator_left * denumerator_right));
        }
    }
}