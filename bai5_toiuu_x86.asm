	.file	"bai5_toiuu.c"
	.intel_syntax noprefix
	.text
	.globl	isPrimeNumber
	.type	isPrimeNumber, @function
isPrimeNumber:
.LFB0:
	.cfi_startproc
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
	.string	"Liet ke tat ca cac so co 5 chu so:"
.LC1:
	.string	"%d\n"
	.align 8
.LC2:
	.string	"Tong cac so nguyen to co 5 chu so la: %d"
.LC4:
	.string	"\nExe time: %f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 48
	call	clock@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	DWORD PTR -32[rbp], 0
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -28[rbp], 10001
	jmp	.L8
.L10:
	mov	eax, DWORD PTR -28[rbp]
	mov	edi, eax
	call	isPrimeNumber
	test	eax, eax
	je	.L9
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, eax
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -32[rbp], 1
.L9:
	add	DWORD PTR -28[rbp], 2
.L8:
	cmp	DWORD PTR -28[rbp], 99998
	jle	.L10
	mov	eax, DWORD PTR -32[rbp]
	mov	esi, eax
	lea	rdi, .LC2[rip]
	mov	eax, 0
	call	printf@PLT
	call	clock@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, QWORD PTR -24[rbp]
	cvtsi2sd	xmm0, rax
	movsd	xmm1, QWORD PTR .LC3[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -40[rbp], rax
	movsd	xmm0, QWORD PTR -40[rbp]
	lea	rdi, .LC4[rip]
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
.LC3:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
