clz: main.o clz.o
	gcc main.o clz.o -g -o clz
	
main.o: main.c
	gcc -c -g main.c
	
clz.o: clz.s
	gcc -c -g clz.s
	
clean:
	rm *.o
	rm clz
