	.file	"bai9_goc.c"
	.intel_syntax noprefix
	.text
	.comm	f0,8,8
	.globl	fibonacci
	.type	fibonacci, @function
fibonacci:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	mov	DWORD PTR -36[rbp], edi
	pxor	xmm0, xmm0
	movsd	QWORD PTR f0[rip], xmm0
	movsd	xmm0, QWORD PTR .LC1[rip]
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR .LC1[rip]
	movsd	QWORD PTR -16[rbp], xmm0
	cmp	DWORD PTR -36[rbp], 0
	jns	.L2
	mov	eax, -1
	jmp	.L3
.L2:
	cmp	DWORD PTR -36[rbp], 0
	jne	.L4
	mov	eax, DWORD PTR -36[rbp]
	jmp	.L3
.L4:
	cmp	DWORD PTR -36[rbp], 1
	jne	.L5
	mov	eax, DWORD PTR -36[rbp]
	jmp	.L3
.L5:
	movsd	xmm0, QWORD PTR .LC2[rip]
	movsd	QWORD PTR -8[rbp], xmm0
	jmp	.L6
.L7:
	movsd	xmm0, QWORD PTR -24[rbp]
	movsd	QWORD PTR f0[rip], xmm0
	movsd	xmm0, QWORD PTR -16[rbp]
	movsd	QWORD PTR -24[rbp], xmm0
	movsd	xmm0, QWORD PTR f0[rip]
	movsd	xmm1, QWORD PTR -24[rbp]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -16[rbp], xmm0
	movsd	xmm1, QWORD PTR -8[rbp]
	movsd	xmm0, QWORD PTR .LC1[rip]
	addsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
.L6:
	cvtsi2sd	xmm0, DWORD PTR -36[rbp]
	comisd	xmm0, QWORD PTR -8[rbp]
	ja	.L7
	movsd	xmm0, QWORD PTR -16[rbp]
	cvttsd2si	eax, xmm0
.L3:
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	fibonacci, .-fibonacci
	.section	.rodata
	.align 8
.LC3:
	.string	"30 so dau tien cua day so Fibonacci: "
.LC4:
	.string	"%d "
.LC6:
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
	call	clock@PLT
	mov	QWORD PTR -24[rbp], rax
	lea	rdi, .LC3[rip]
	call	puts@PLT
	mov	DWORD PTR -28[rbp], 0
	jmp	.L9
.L10:
	mov	eax, DWORD PTR -28[rbp]
	mov	edi, eax
	call	fibonacci
	mov	esi, eax
	lea	rdi, .LC4[rip]
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -28[rbp], 1
.L9:
	cmp	DWORD PTR -28[rbp], 29
	jle	.L10
	call	clock@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, QWORD PTR -24[rbp]
	cvtsi2sd	xmm0, rax
	movsd	xmm1, QWORD PTR .LC5[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	mov	rax, QWORD PTR -8[rbp]
	movq	xmm0, rax
	lea	rdi, .LC6[rip]
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
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	0
	.long	1073741824
	.align 8
.LC5:
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
