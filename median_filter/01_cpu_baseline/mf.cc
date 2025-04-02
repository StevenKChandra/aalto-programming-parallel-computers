/*
This is the function you need to implement. Quick reference:
- input rows: 0 <= y < ny
- input columns: 0 <= x < nx
- element at row y and column x is stored in in[x + y*nx]
- for each pixel (x, y), store the median of the pixels (a, b) which satisfy
  max(x-hx, 0) <= a < min(x+hx+1, nx), max(y-hy, 0) <= b < min(y+hy+1, ny)
  in out[x + y*nx].
*/
#include <algorithm>

void mf(int ny, int nx, int hy, int hx, const float *in, float *out) {
    float* frame = new float[(2 * hy + 1) * (2 * hx + 1)];
    for (int i = 0; i < ny; i++) {
        for (int j = 0; j < nx; j++) {
            int y_start = 0 > i - hy ? 0 : i - hy;
            int y_end = ny < i + hy + 1 ? ny : i + hy + 1;
            int x_start = 0 > j - hx ? 0 : j - hx;
            int x_end = nx < j + hx + 1 ? nx : j + hx + 1;
            int count = 0;
            for (int k = y_start; k < y_end; k++){
                for (int l = x_start; l < x_end; l++){
                    frame[count++] = in[k * nx + l];
                }
            }
            if (count % 2 == 0) {
                std::nth_element(frame, frame + count/2, frame + count);
                std::nth_element(frame, frame + count/2 - 1, frame + count);
                out[i * nx + j] = (frame[count/2] + frame[count/2 - 1])/2;
                continue;
            }
            std::nth_element(frame, frame + count/2, frame + count);
            out[i * nx + j] = frame[count/2];
        }
    }
    delete[] frame;
}
