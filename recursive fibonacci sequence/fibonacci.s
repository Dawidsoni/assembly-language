		
		.text
		
		.globl	fibonacci
		.type fibonacci, @function
		
fibonacci:
	push	%rbp
	mov		%rsp, %rbp
	cmp 	$1, %rdi
	je		.BASE_REC
	cmp 	$2, %rdi
	je		.BASE_REC
	push	%rdi
	sub		$1, %rdi
	call	fibonacci
	pop		%rdi
	push 	%rax
	sub		$2, %rdi
	call	fibonacci
	pop		%r8
	add		%r8, %rax	
	pop		%rbp
	ret

.BASE_REC:
	mov		$1, %rax
	pop		%rbp
	ret		

