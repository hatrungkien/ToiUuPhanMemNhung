	.file	"bai7_toiuu.c"
	.intel_syntax noprefix
	.text
	.globl	DEC_10
	.section	.rodata
	.align 4
	.type	DEC_10, @object
	.size	DEC_10, 4
DEC_10:
	.long	10
.LC0:
	.string	"Tong cac chu so cua %d la: %d"
.LC2:
	.string	"\nExe time: %f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	DWORD PTR -32[rbp], 1234567899
	call	clock@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	DWORD PTR -28[rbp], 0
.L2:
	mov	ecx, 10
	mov	eax, DWORD PTR -32[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	add	DWORD PTR -28[rbp], eax
	mov	esi, 10
	mov	eax, DWORD PTR -32[rbp]
	cdq
	idiv	esi
	mov	DWORD PTR -32[rbp], eax
	cmp	DWORD PTR -32[rbp], 0
	jg	.L2
	mov	edx, DWORD PTR -28[rbp]
	mov	eax, DWORD PTR -32[rbp]
	mov	esi, eax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	call	clock@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, QWORD PTR -24[rbp]
	cvtsi2sd	xmm0, rax
	movsd	xmm1, QWORD PTR .LC1[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -40[rbp], rax
	movsd	xmm0, QWORD PTR -40[rbp]
	lea	rdi, .LC2[rip]
	mov	eax, 1
	call	printf@PLT
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
