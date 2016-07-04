#include<stdio.h>

unsigned mulf(unsigned a, unsigned b);

int main() {	
	int x = 0xc1000fff;	
	int y = 0x41ffffff;		
	printf("%d\n", mulf(x, x)); //x * x = 0x42801fff
	printf("%d\n", mulf(x, y)); //x * y = 0xc3800ffe
	return 0;
}
