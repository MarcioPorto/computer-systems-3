	.file	"hw3_arith.c"
	.text
.globl arith
	.type	arith, @function
arith:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	movl	12(%ebp), %edx
	addl	%eax, %edx
	addl	16(%ebp), %edx
	leal	(%edx,%eax,4), %eax
	sall	$5, %edx
	addl	%edx, %eax
	popl	%ebp
	ret
	.size	arith, .-arith
	.ident	"GCC: (Ubuntu/Linaro 4.4.7-8ubuntu1) 4.4.7"
	.section	.note.GNU-stack,"",@progbits
