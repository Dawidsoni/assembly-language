approx_sqrt: main.o approx_sqrt.o
	gcc main.o approx_sqrt.o -g -o approx_sqrt
	
main.o: main.c
	gcc -c -g main.c
	
approx_sqrt.o: approx_sqrt.s
	gcc -c -g approx_sqrt.s
	
clean:
	rm *.o
	rm approx_sqrt


