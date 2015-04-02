	.file	"trace.c"
	.text
.globl trace
	.type	trace, @function
trace:
	pushl	%ebp
	movl	%esp, %ebp
	movl	8(%ebp), %edx
	movl	$0, %eax
	testl	%edx, %edx
	je	.L3
.L5:
	movl	(%edx), %eax
	movl	8(%edx), %edx
	testl	%edx, %edx
	jne	.L5
.L3:
	popl	%ebp
	ret
	.size	trace, .-trace
	.ident	"GCC: (Ubuntu/Linaro 4.4.7-8ubuntu1) 4.4.7"
	.section	.note.GNU-stack,"",@progbits
