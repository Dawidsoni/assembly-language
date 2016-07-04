		
		.text
		
		.globl	lcm_gcd
		.type lcm_gcd, @function
		
lcm_gcd:
		mov		%rdi, %r8
		mov		%rsi, %r9
.START:
		cmp		$0, %rdi
		jne		.LOOP
		mov 	%rsi, %r10
		mov		%r8, %rax
		mov    	$0, %rdx
		div		%r10
		mul		%r9
		mov		%rsi, %rdx			
		ret
		
.LOOP:
		mov		%rdi, %r10
		mov		%rsi, %rax
		mov		$0, %rdx
		div		%rdi
		mov		%rdx, %rdi
		mov		%r10, %rsi
		jmp		.START


