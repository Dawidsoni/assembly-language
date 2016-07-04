#include<stdio.h>

void insert_sort(long *first, long *last);

void test(long * first, long * last) {
	insert_sort(first, last);	
	while(first != last) {
		printf("%ld ", *first);
		first++;
	}	
	printf("\n");
}


int main() {
	long arr1[5] = {3, 2, 1, 4, 5};	
	long arr2[1] = {3};	
	long arr3[2] = {3, 2};	
	long arr4[5] = {5, 4, 3, 2, 1};	
	long arr5[6] = {10, 20, 17, 33, 22, 44};	
	test(arr1, arr1 + 5);
	test(arr2, arr2 + 1);
	test(arr3, arr3 + 2);
	test(arr4, arr4 + 5);
	test(arr5, arr5 + 6);	
	return 0;
}
