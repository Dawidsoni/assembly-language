#include<stdio.h>

unsigned long fibonacci(unsigned long n); 

int main() {
	int i = 1;
	for(i = 1; i <= 10; i++) {
		printf("%ld\n", fibonacci(i));		
	}
	return 0;
}
