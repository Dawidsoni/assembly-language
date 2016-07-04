#include <stdio.h>

double approx_sqrt(double x, double epsilon);

int main() {
	printf("%lf\n", approx_sqrt(16, 1));
	printf("%lf\n", approx_sqrt(30.5, 0.1));
	printf("%lf\n", approx_sqrt(100, 0.01));
	printf("%lf\n", approx_sqrt(1123, 1));
	printf("%lf\n", approx_sqrt(111.111, 0.1));
    return 0;
}
