
		.section		.rodata
		
S_MASK:	.quad	0xffffffff
S_ADD:	.quad	32
S_MAX:	.quad	64

        .text

        .globl  clz
        .type clz, @function
        
clz:
		cmp		$0, %rdi
		je		.CASE_0
        mov    	$0, %rax
		mov		S_MASK, %r8
		mov		S_ADD, %rcx
		jmp		.LOOP
.START:
		shr		$1, %rcx
		shr		%cl, %r8		
		cmp		$0, %rcx
		jg		.LOOP
		ret
		
.LOOP:
		cmp		%r8, %rdi
		jle		.ADD_TO_RESULT
		shr		%cl, %rdi
		jmp		.START
		
		
.ADD_TO_RESULT:
		add		%rcx, %rax
		jmp		.START
		

.CASE_0:
		mov		S_MAX, %rax
		ret
		
		
		
