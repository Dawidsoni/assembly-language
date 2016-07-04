mulf: main.o mulf.o
	gcc main.o mulf.o -g -o mulf
	
main.o: main.c
	gcc -c -g main.c
	
mulf.o: mulf.s
	gcc -c -g mulf.s
	
clean:
	rm *.o
	rm mulf

