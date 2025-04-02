struct Result {
    int y0;
    int x0;
    int y1;
    int x1;
    float outer[3];
    float inner[3];
};
/*
This is the function you need to implement. Quick reference:
- x coordinates: 0 <= x < nx
- y coordinates: 0 <= y < ny
- color components: 0 <= c < 3
- input: data[c + 3 * x + 3 * nx * y]
*/

#define C_SIZE 3
#define R 0
#define G 1
#define B 2

int c[] = { R, G, B };

inline void rd_rgb(double *source, double *target, int y, int x, int nx) {
    for (int i = 0; i < C_SIZE; i++) {
        if (y < 0 || x < 0) target[c[i]] = 0;
        else target[c[i]] = source[(y *nx + x ) * 3 + c[i]];
    }
}

inline void rd_rgb(const float *source, double *target, int y, int x, int nx) {
    for (int i = 0; i < C_SIZE; i++) {
        if (y < 0 || x < 0) target[c[i]] = 0;
        else target[c[i]] = source[(y *nx + x ) * 3 + c[i]];
    }
}

typedef void (*func_t);

Result segment(int ny, int nx, const float *data) {
    int overall_area = ny * nx;

    Result result{0, 0, 0, 0, {0, 0, 0}, {0, 0, 0}};

    double *sum = new double[ny * nx * 3];
    double *sum_sq = new double[ny * nx * 3];

    for (int i = 0; i < ny; i++) {
        for (int j = 0; j < nx; j++) {
            double top[C_SIZE];
            double left[C_SIZE];
            double top_left[C_SIZE];
            double curr[C_SIZE];

            rd_rgb(sum, top, i - 1, j, nx);
            rd_rgb(sum, left, i, j - 1, nx);
            rd_rgb(sum, top_left, i - 1, j - 1, nx);
            rd_rgb(data, curr, i, j, nx);

            for (int k = 0; k < C_SIZE; k++) {
                sum[(i * nx + j) * 3  + c[k]] = curr[c[k]] + top[c[k]] + left[c[k]] - top_left[c[k]];
            }

            rd_rgb(sum_sq, top, i - 1, j, nx);
            rd_rgb(sum_sq, left, i, j - 1, nx);
            rd_rgb(sum_sq, top_left, i - 1, j - 1, nx);

            for (int k = 0; k < C_SIZE; k++) {
                sum_sq[(i * nx + j) * 3  + c[k]] = curr[c[k]] * curr[c[k]] + top[c[k]] + left[c[k]] - top_left[c[k]];
            }
        }
    }

    double min_sq_err = __DBL_MAX__;

    for (int y_size = 1; y_size <= ny; y_size++) {
        for (int x_size = 1; x_size <= nx; x_size++) {
            int y_range = ny - y_size;
            int x_range = nx - x_size;
            int box_area = y_size * x_size;
            
            for (int y_start = 0; y_start <= y_range; y_start++) {
                for (int x_start = 0; x_start <= x_range; x_start++) {
                    double error = 0;

                    double top[C_SIZE];
                    double left[C_SIZE];
                    double top_left[C_SIZE];
                    double curr[C_SIZE];
                    rd_rgb(sum, top, y_start - 1, x_start + x_size - 1, nx);
                    rd_rgb(sum, left, y_start + y_size - 1, x_start - 1, nx);
                    rd_rgb(sum, top_left, y_start - 1, x_start - 1, nx);
                    rd_rgb(sum, curr, y_start + y_size - 1, x_start + x_size - 1, nx);

                    double inside_avg[C_SIZE];
                    double outside_avg[C_SIZE];
                    for (int i = 0; i < C_SIZE; i++) {
                        inside_avg[c[i]] = curr[c[i]] + top_left[c[i]] - top[c[i]] - left[c[i]];
                        inside_avg[c[i]] /= box_area;

                        outside_avg[c[i]] = sum[(ny * nx - 1) * 3 + c[i]] -  curr[c[i]] - top_left[c[i]] + top[c[i]] + left[c[i]];
                        outside_avg[c[i]] /= overall_area - box_area;
    
                        error += inside_avg[c[i]] * inside_avg[c[i]] * box_area;
                        error -= 2 * inside_avg[c[i]] * inside_avg[c[i]] * box_area;
    
                        error += outside_avg[c[i]] * outside_avg[c[i]] * (overall_area - box_area);
                        error -= 2 * outside_avg[c[i]] * outside_avg[c[i]] * (overall_area - box_area);
                    }

                    rd_rgb(sum_sq, top, y_start - 1, x_start + x_size - 1, nx);
                    rd_rgb(sum_sq, left, y_start + y_size - 1, x_start - 1, nx);
                    rd_rgb(sum_sq, top_left, y_start - 1, x_start - 1, nx);
                    rd_rgb(sum_sq, curr, y_start + y_size - 1, x_start + x_size - 1, nx);

                    double inside_sum_sq[C_SIZE];
                    double outside_sum_sq[C_SIZE];
                    for (int i = 0; i < C_SIZE; i++) {
                        inside_sum_sq[c[i]] = curr[c[i]] + top_left[c[i]] - top[c[i]] - left[c[i]];
                        outside_sum_sq[c[i]] = sum_sq[(ny * nx - 1) * 3 + c[i]] -  curr[c[i]] - top_left[c[i]] + top[c[i]] + left[c[i]];
    
                        error += inside_sum_sq[c[i]];
                        error += outside_sum_sq[c[i]];
                    }

                    if (error < min_sq_err) {
                        min_sq_err = error;
                        result.x0 = x_start;
                        result.y0 = y_start;
                        result.x1 = x_start + x_size;
                        result.y1 = y_start + y_size;
                        for (int i = 0; i < C_SIZE; i++) {
                            result.inner[c[i]] = inside_avg[c[i]];
                            result.outer[c[i]] = outside_avg[c[i]];
                        }
                    }
                }
            }
        }
    }
    delete[] sum;
    delete[] sum_sq;

    return result;
}