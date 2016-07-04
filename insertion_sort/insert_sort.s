		
		.text
		
		.globl	insert_sort
		.type insert_sort, @function		
		
insert_sort:
		mov		%rdi, %r8
.INSERT_START:
		add		$8, %r8
		cmp		%rsi, %r8
		jl		.FIRST_LOOP
		ret


.FIRST_LOOP:
		mov		%r8, %r9
.FIRST_LOOP_START:
		cmp 	%rdi, %r9
		jg		.SECOND_LOOP
		jmp		.INSERT_START

		
.SECOND_LOOP:
		mov		-8(%r9), %r10
		cmp		 %r10, (%r9)
		jl		.SWAP
		jmp		.INSERT_START


.SWAP:
		mov		(%r9), %r10
		mov		-8(%r9), %r11
		mov		%r11, (%r9)
		mov		%r10, -8(%r9)
		sub		$8, %r9
		jmp		.FIRST_LOOP_START

