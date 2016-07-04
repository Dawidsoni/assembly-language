		.section	.rodata
		
M_MASK:	.quad	0x7fffff
M_BIT:	.quad	0x800000
E_SIZE:	.quad	127
M_CMP:	.quad	0xffffff
M_AND:	.quad	0xff

		.text

		.globl	mulf
		.type mulf, @function
		
mulf:
		mov 	%edi, %r8d
		and		M_MASK, %r8			
		or		M_BIT, %r8				#m1
		mov 	%esi, %eax
		and		M_MASK, %rax			
		or		M_BIT, %rax				#m2		
		mul		%r8						#rax = m1 * m2
		shr		$23, %rax
		mov		$0, %r8d				
		jmp		.SET_MANTISA
.SET_EXP:								#r8d mantisa >= 2
		and		M_MASK, %rax
		mov		%edi, %r9d
		mov 	%esi, %r10d
		shr		$23, %r9d
		shr		$23, %r10d
		and		M_AND, %r9d				#e1
		and		M_AND, %r10d			#e2
		add		%r10d, %r9d
		add		%r8d, %r9d				#add 1 if mantisa >= 2
		sub		E_SIZE, %r9d			#e1 + e2
		shl		$23, %r9d
		add		%r9d, %eax
		#set sign
		shr		$31, %edi
		shr		$31, %esi
		xor		%esi, %edi				#s1 ^ s2
		shl		$31, %edi
		add		%edi, %eax
		ret


.SET_MANTISA:
		cmp		M_CMP, %rax
		jle		.SET_EXP
		mov		$1, %r8d
		shr		$1, %rax		
		jmp		.SET_EXP
		
