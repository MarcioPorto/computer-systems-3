	.file	"trace.c"
	.text
.globl trace
	.type	trace, @function
trace:
.LFB0:
	.cfi_startproc
	movl	$0, %eax
	testq	%rdi, %rdi
	je	.L3
.L5:
	movq	(%rdi), %rax
	movq	16(%rdi), %rdi
	testq	%rdi, %rdi
	jne	.L5
.L3:
	rep
	ret
	.cfi_endproc
.LFE0:
	.size	trace, .-trace
	.ident	"GCC: (Ubuntu/Linaro 4.4.7-8ubuntu1) 4.4.7"
	.section	.note.GNU-stack,"",@progbits
