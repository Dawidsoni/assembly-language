#include <stdio.h>

int clz(long n);

int main() {
	printf("%d\n", clz(3));//62
	printf("%d\n", clz(7));//61
	printf("%d\n", clz(12));//60
	printf("%d\n", clz(15));//60
	printf("%d\n", clz(1000));//54
	printf("%d\n", clz(1 << 30));//33
	printf("%d\n", clz(22222222222222LL));//19
	printf("%d\n", clz(0));	//64
    return 0;
}
