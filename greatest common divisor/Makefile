lcm_gcd: main.o lcm_gcd.o
	gcc main.o lcm_gcd.o -g -o lcm_gcd
	
main.o: main.c
	gcc -c -g main.c
	
clz.o: lcm_gcd.s
	gcc -c -g lcm_gcd.s
	
clean:
	rm *.o
	rm lcm_gcd
