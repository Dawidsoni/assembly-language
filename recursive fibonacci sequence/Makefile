fibonacci: main.o fibonacci.o
	gcc main.o fibonacci.o -g -o fibonacci
	
main.o: main.c
	gcc -c -g main.c
	
fibonacci.o: fibonacci.s
	gcc -c -g fibonacci.s
	
clean:
	rm *.o
	rm fibonacci
