#include <stdio.h>

long adds(long x,long y) {
	long result;
	asm("mov $0x7fffffffffffffff, %%r8 \n"
		"mov $0x8000000000000000, %%r9\n"
		"mov %1, %0 \n"
		"add %2, %0\n"
		"cmovs %%r8, %%r9\n"
		"cmovo %%r9, %0\n"
		: "=r" (result)
		: "r" (x), "r" (y)
		: "%r8", "%r9"
	);	
	return result;
}

int main() {	
	long a = -9222222222222222222LL;
	long b = 9222222222222222222LL;
	long c = 22;
	long d = -22;
	long e = 30;
	printf("%ld\n", adds(a, a));
	printf("%ld\n", adds(b, b));
	printf("%ld\n", adds(c, c));
	printf("%ld\n", adds(d, d));
	printf("%ld\n", adds(e, d));	
	printf("%ld\n", adds(d, e));	
    return 0;
}
