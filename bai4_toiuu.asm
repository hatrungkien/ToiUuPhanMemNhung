	.file	"bai4_toiuu.c"
	.intel_syntax noprefix
	.text
	.globl	isPrimeNumber
	.type	isPrimeNumber, @function
isPrimeNumber:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	cmp	DWORD PTR -20[rbp], 1
	jg	.L2
	mov	eax, 0
	jmp	.L3
.L2:
	cvtsi2sd	xmm0, DWORD PTR -20[rbp]
	call	sqrt@PLT
	cvttsd2si	eax, xmm0
	mov	DWORD PTR -8[rbp], eax
	mov	DWORD PTR -12[rbp], 2
	jmp	.L4
.L6:
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -12[rbp]
	mov	DWORD PTR -4[rbp], edx
	cmp	DWORD PTR -4[rbp], 0
	jne	.L5
	mov	eax, 0
	jmp	.L3
.L5:
	add	DWORD PTR -12[rbp], 1
.L4:
	mov	eax, DWORD PTR -12[rbp]
	cmp	eax, DWORD PTR -8[rbp]
	jle	.L6
	mov	eax, 1
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	isPrimeNumber, .-isPrimeNumber
	.section	.rodata
	.align 8
.LC0:
	.string	"%d so nguyen to dau tien la: \n"
.LC1:
	.string	"%d "
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
	sub	rsp, 48
	mov	DWORD PTR -28[rbp], 20
	call	clock@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, eax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -36[rbp], 0
	mov	DWORD PTR -32[rbp], 2
	jmp	.L8
.L10:
	mov	eax, DWORD PTR -32[rbp]
	mov	edi, eax
	call	isPrimeNumber
	test	eax, eax
	je	.L9
	mov	eax, DWORD PTR -32[rbp]
	mov	esi, eax
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -36[rbp], 1
.L9:
	add	DWORD PTR -32[rbp], 1
.L8:
	mov	eax, DWORD PTR -36[rbp]
	cmp	eax, DWORD PTR -28[rbp]
	jl	.L10
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
