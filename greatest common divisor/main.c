#include <stdio.h>

typedef struct { unsigned long lcm, gcd; } result_t;

result_t lcm_gcd(unsigned long x1, unsigned long x2);

void print(result_t t) {
	printf("%ld %ld\n", t.lcm, t.gcd);	
}

int main() {
	print(lcm_gcd(8, 6));
	print(lcm_gcd(6, 8));
	print(lcm_gcd(10, 12));
	print(lcm_gcd(14, 13));
	print(lcm_gcd(20, 15));
    return 0;
}
