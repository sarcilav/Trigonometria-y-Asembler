	.file	"fun_arcila.cc"
	.text
.globl _Z5toRadi
	.type	_Z5toRadi, @function
_Z5toRadi:
.LFB2:
	pushl	%ebp
.LCFI0:
	movl	%esp, %ebp
.LCFI1:
	subl	$4, %esp
.LCFI2:
	fildl	8(%ebp)
	fldl	.LC0
	fmulp	%st, %st(1)
	fstps	-4(%ebp)
	flds	-4(%ebp)
	leave
	ret
.LFE2:
	.size	_Z5toRadi, .-_Z5toRadi
.globl _Z5trigofb
	.type	_Z5trigofb, @function
_Z5trigofb:
.LFB3:
	pushl	%ebp
.LCFI3:
	movl	%esp, %ebp
.LCFI4:
	subl	$40, %esp
.LCFI5:
	movl	12(%ebp), %eax
	movb	%al, -36(%ebp)
	movl	8(%ebp), %eax
	movl	%eax, -4(%ebp)
	movzbl	-36(%ebp), %eax
	xorl	$1, %eax
	testb	%al, %al
	je	.L4
	movl	$0x3f800000, %eax
	movl	%eax, -4(%ebp)
.L4:
	movl	-4(%ebp), %eax
	movl	%eax, -8(%ebp)
	flds	8(%ebp)
	fmuls	8(%ebp)
	fstps	-12(%ebp)
	movl	$0x3f800000, %eax
	movl	%eax, -16(%ebp)
	movl	$1, -20(%ebp)
	movl	$1, -24(%ebp)
	jmp	.L5
.L8:
	negl	-20(%ebp)
	cmpb	$0, -36(%ebp)
	je	.L6
	movl	-24(%ebp), %eax
	leal	(%eax,%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %eax
	addl	$1, %eax
	imull	%edx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	flds	-16(%ebp)
	fmulp	%st, %st(1)
	fstps	-16(%ebp)
	jmp	.L7
.L6:
	movl	-24(%ebp), %eax
	leal	(%eax,%eax), %edx
	movl	-24(%ebp), %eax
	addl	%eax, %eax
	subl	$1, %eax
	imull	%edx, %eax
	pushl	%eax
	fildl	(%esp)
	leal	4(%esp), %esp
	flds	-16(%ebp)
	fmulp	%st, %st(1)
	fstps	-16(%ebp)
.L7:
	flds	-8(%ebp)
	fmuls	-12(%ebp)
	fstps	-8(%ebp)
	fildl	-20(%ebp)
	fmuls	-8(%ebp)
	fdivs	-16(%ebp)
	flds	-4(%ebp)
	faddp	%st, %st(1)
	fstps	-4(%ebp)
	addl	$1, -24(%ebp)
.L5:
	cmpl	$7, -24(%ebp)
	jle	.L8
	movl	-4(%ebp), %eax
	movl	%eax, -40(%ebp)
	flds	-40(%ebp)
	leave
	ret
.LFE3:
	.size	_Z5trigofb, .-_Z5trigofb
.globl main
	.type	main, @function
main:
.LFB4:
	leal	4(%esp), %ecx
.LCFI6:
	andl	$-16, %esp
	pushl	-4(%ecx)
.LCFI7:
	pushl	%ebp
.LCFI8:
	movl	%esp, %ebp
.LCFI9:
	pushl	%ecx
.LCFI10:
	movl	$0, %eax
	popl	%ecx
	popl	%ebp
	leal	-4(%ecx), %esp
	ret
.LFE4:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC0:
	.long	-1571644103
	.long	1066524486
	.ident	"GCC: (Ubuntu 4.3.3-5ubuntu4) 4.3.3"
	.section	.note.GNU-stack,"",@progbits
