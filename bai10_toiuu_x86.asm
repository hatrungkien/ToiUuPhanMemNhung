	.file	"bai10_toiuu.c"
	.intel_syntax noprefix
	.text
	.globl	fibonacci
	.type	fibonacci, @function
fibonacci:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	push	rbx
	sub	rsp, 24
	.cfi_offset 3, -24
	mov	DWORD PTR -20[rbp], edi
	cmp	DWORD PTR -20[rbp], 0
	jns	.L2
	mov	eax, -1
	jmp	.L3
.L2:
	cmp	DWORD PTR -20[rbp], 0
	je	.L4
	cmp	DWORD PTR -20[rbp], 1
	jne	.L5
.L4:
	mov	eax, DWORD PTR -20[rbp]
	jmp	.L3
.L5:
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 1
	mov	edi, eax
	call	fibonacci
	mov	ebx, eax
	mov	eax, DWORD PTR -20[rbp]
	sub	eax, 2
	mov	edi, eax
	call	fibonacci
	add	eax, ebx
.L3:
	add	rsp, 24
	pop	rbx
	pop	rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	fibonacci, .-fibonacci
	.globl	isPrimeNumber
	.type	isPrimeNumber, @function
isPrimeNumber:
.LFB1:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	cmp	DWORD PTR -20[rbp], 1
	jg	.L7
	mov	eax, 0
	jmp	.L8
.L7:
	cvtsi2sd	xmm0, DWORD PTR -20[rbp]
	call	sqrt@PLT
	cvttsd2si	eax, xmm0
	mov	DWORD PTR -4[rbp], eax
	mov	DWORD PTR -8[rbp], 2
	jmp	.L9
.L11:
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -8[rbp]
	mov	eax, edx
	test	eax, eax
	jne	.L10
	mov	eax, 0
	jmp	.L8
.L10:
	add	DWORD PTR -8[rbp], 1
.L9:
	mov	eax, DWORD PTR -8[rbp]
	cmp	eax, DWORD PTR -4[rbp]
	jle	.L11
	mov	eax, 1
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	isPrimeNumber, .-isPrimeNumber
	.section	.rodata
	.align 8
.LC0:
	.string	"Cac so fibonacci nho hon %d va la so nguyen to: "
.LC1:
	.string	"%d "
.LC3:
	.string	"\nExe time: %f\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB2:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 64
	call	clock@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	DWORD PTR -32[rbp], 9999990
	mov	eax, DWORD PTR -32[rbp]
	mov	esi, eax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	mov	DWORD PTR -36[rbp], 0
	jmp	.L13
.L15:
	mov	eax, DWORD PTR -36[rbp]
	mov	edi, eax
	call	fibonacci
	mov	DWORD PTR -28[rbp], eax
	mov	eax, DWORD PTR -28[rbp]
	mov	edi, eax
	call	isPrimeNumber
	test	eax, eax
	je	.L14
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, eax
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	printf@PLT
.L14:
	add	DWORD PTR -36[rbp], 1
.L13:
	mov	eax, DWORD PTR -36[rbp]
	mov	edi, eax
	call	fibonacci
	cmp	DWORD PTR -32[rbp], eax
	jg	.L15
	call	clock@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, QWORD PTR -24[rbp]
	cvtsi2sd	xmm0, rax
	movsd	xmm1, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -56[rbp], rax
	movsd	xmm0, QWORD PTR -56[rbp]
	lea	rdi, .LC3[rip]
	mov	eax, 1
	call	printf@PLT
	mov	eax, 0
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2:
	.size	main, .-main
	.section	.rodata
	.align 8
.LC2:
	.long	0
	.long	1093567616
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
