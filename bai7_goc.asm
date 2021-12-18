	.file	"bai7_goc.c"
	.intel_syntax noprefix
	.text
	.globl	DEC_10
	.section	.rodata
	.align 4
	.type	DEC_10, @object
	.size	DEC_10, 4
DEC_10:
	.long	10
	.comm	n,4,4
	.comm	total,8,8
	.text
	.globl	totalDigitsOfNumber
	.type	totalDigitsOfNumber, @function
totalDigitsOfNumber:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR -4[rbp], edi
	pxor	xmm0, xmm0
	movsd	QWORD PTR total[rip], xmm0
.L2:
	mov	ecx, 10
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	cvtsi2sd	xmm1, eax
	movsd	xmm0, QWORD PTR total[rip]
	addsd	xmm0, xmm1
	movsd	QWORD PTR total[rip], xmm0
	mov	esi, 10
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	esi
	mov	DWORD PTR -4[rbp], eax
	cmp	DWORD PTR -4[rbp], 0
	jg	.L2
	movsd	xmm0, QWORD PTR total[rip]
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	totalDigitsOfNumber, .-totalDigitsOfNumber
	.section	.rodata
.LC1:
	.string	"Tong cac chu so cua %d la: %f"
.LC3:
	.string	"\nExe time: %f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	DWORD PTR n[rip], 1234567899
	call	clock@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	eax, DWORD PTR n[rip]
	mov	edi, eax
	call	totalDigitsOfNumber
	mov	eax, DWORD PTR n[rip]
	mov	esi, eax
	lea	rdi, .LC1[rip]
	mov	eax, 1
	call	printf@PLT
	call	clock@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, QWORD PTR -24[rbp]
	cvtsi2sd	xmm0, rax
	movsd	xmm1, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	mov	rax, QWORD PTR -8[rbp]
	movq	xmm0, rax
	lea	rdi, .LC3[rip]
	mov	eax, 1
	call	printf@PLT
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC2:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 9.3.0-17ubuntu1~20.04) 9.3.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
