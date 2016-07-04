insert_sort: main.o insert_sort.o
	gcc main.o insert_sort.o -g -o insert_sort
	
main.o: main.c
	gcc -c -g main.c
	
insert_sort.o: insert_sort.s
	gcc -c -g insert_sort.s
	
clean:
	rm *.o
	rm insert_sort
