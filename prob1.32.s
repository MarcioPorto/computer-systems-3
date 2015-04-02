	.file	"prob1.c"
	.text
.globl return_entry
	.type	return_entry, @function
return_entry:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %eax
	leal	(%eax,%eax,4), %eax
	addl	12(%ebp), %eax
	sall	$4, %eax
	movl	matrix+4(%eax), %eax
	popl	%ebp
	ret
	.size	return_entry, .-return_entry
	.comm	matrix,160,32
	.ident	"GCC: (Ubuntu/Linaro 4.4.7-8ubuntu1) 4.4.7"
	.section	.note.GNU-stack,"",@progbits
