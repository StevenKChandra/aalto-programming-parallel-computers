struct Result {
    float avg[3];
};

/*
This is the function you need to implement. Quick reference:
- x coordinates: 0 <= x < nx
- y coordinates: 0 <= y < ny
- horizontal position: 0 <= x0 < x1 <= nx
- vertical position: 0 <= y0 < y1 <= ny
- color components: 0 <= c < 3
- input: data[c + 3 * x + 3 * nx * y]
- output: avg[c]
*/
Result calculate(int ny, int nx, const float *data, int y0, int x0, int y1, int x1) {
    Result result{{0.0f, 0.0f, 0.0f}};
    if (y0 > ny || y1 > ny) return result;
    if (x0 > nx || x1 > nx) return result;
    double count = 0;
    double r = 0, g = 0, b = 0;
    for (int i = y0; i < y1; i++)
    {
        for (int j = x0; j < x1; j++)
        {
            int offset = i * nx * 3 + 3 * j;
            r -= (r - *(data+offset+0)) / (count + 1.0);
            g -= (g - *(data+offset+1)) / (count + 1.0);
            b -= (b - *(data+offset+2)) / (count + 1.0);
            count++;
        }
    }
    result.avg[0] = static_cast<float> (r);
    result.avg[1] = static_cast<float> (g);
    result.avg[2] = static_cast<float> (b);
    return result;
}