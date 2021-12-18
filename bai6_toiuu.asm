	.file	"bai6_toiuu.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"%d = "
.LC2:
	.string	"%d "
.LC4:
	.string	"\nExe time: %f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	mov	DWORD PTR -40[rbp], 999999990
	call	clock@PLT
	mov	QWORD PTR -32[rbp], rax
	mov	eax, DWORD PTR -40[rbp]
	mov	esi, eax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -36[rbp], 2
	jmp	.L2
.L5:
	mov	eax, DWORD PTR -40[rbp]
	cdq
	idiv	DWORD PTR -36[rbp]
	mov	eax, edx
	cvtsi2sd	xmm0, eax
	movsd	QWORD PTR -8[rbp], xmm0
	pxor	xmm0, xmm0
	ucomisd	xmm0, QWORD PTR -8[rbp]
	jp	.L3
	pxor	xmm0, xmm0
	ucomisd	xmm0, QWORD PTR -8[rbp]
	jne	.L3
	mov	eax, DWORD PTR -36[rbp]
	mov	esi, eax
	lea	rdi, .LC2[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -40[rbp]
	cdq
	idiv	DWORD PTR -36[rbp]
	mov	DWORD PTR -40[rbp], eax
	jmp	.L2
.L3:
	add	DWORD PTR -36[rbp], 1
.L2:
	cmp	DWORD PTR -40[rbp], 1
	jg	.L5
	call	clock@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	rax, QWORD PTR -24[rbp]
	sub	rax, QWORD PTR -32[rbp]
	cvtsi2sd	xmm0, rax
	movsd	xmm1, QWORD PTR .LC3[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	mov	rax, QWORD PTR -16[rbp]
	movq	xmm0, rax
	lea	rdi, .LC4[rip]
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
.LC3:
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
