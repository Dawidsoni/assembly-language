
		.section	.rodata
		
MULT: 	.double		0.5
APPROX:	.double		0.1
ZERO:	.double		0
INVER:  .double		-1	

        .text

        .globl  approx_sqrt
        .type approx_sqrt, @function
        
approx_sqrt:
		movsd	%xmm0, %xmm2
		mulsd	APPROX, %xmm2
.LOOP:
		movsd	%xmm0, %xmm3		
		movsd	%xmm2, %xmm4		
		divsd	%xmm2, %xmm3		#a/xn
		addsd	%xmm3, %xmm2		#xn + a/xn
		mulsd	MULT, %xmm2			#x(n + 1) = (xn + a/xn)/2
		subsd	%xmm2, %xmm4		#x(n + 1) - x(n)
		comisd  ZERO, %xmm4
		jb		.SET_ABS
		jmp		.CHECK_EPS
		
.END_LOOP:
		movsd	%xmm2, %xmm0
		ret

.SET_ABS:
		mulsd	INVER, %xmm4		#|x(n + 1) - x(n)|
		jmp 	.CHECK_EPS

.CHECK_EPS:
		comisd	%xmm1, %xmm4		#|x(n + 1) - x(n)| < eps				
		jb		.END_LOOP
		jmp		.LOOP
		




