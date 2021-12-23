	.file	"bai2_toiuu.c"
	.intel_syntax noprefix
	.text
	.globl	USCLN
	.type	USCLN, @function
USCLN:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	cmp	DWORD PTR -24[rbp], 0
	jne	.L2
	mov	eax, DWORD PTR -20[rbp]
	jmp	.L3
.L2:
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -24[rbp]
	mov	DWORD PTR -4[rbp], edx
	mov	edx, DWORD PTR -4[rbp]
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, edx
	mov	edi, eax
	call	USCLN
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	USCLN, .-USCLN
	.section	.rodata
.LC0:
	.string	"USCLN cua %d va %d la: %d\n"
.LC1:
	.string	"BSCNN cua %d va %d la: %d"
.LC3:
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
	push	rbx
	sub	rsp, 56
	.cfi_offset 3, -24
	call	clock@PLT
	mov	QWORD PTR -40[rbp], rax
	mov	DWORD PTR -48[rbp], 97
	mov	DWORD PTR -44[rbp], 53
	mov	edx, DWORD PTR -44[rbp]
	mov	eax, DWORD PTR -48[rbp]
	mov	esi, edx
	mov	edi, eax
	call	USCLN
	mov	ecx, eax
	mov	edx, DWORD PTR -44[rbp]
	mov	eax, DWORD PTR -48[rbp]
	mov	esi, eax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -48[rbp]
	imul	eax, DWORD PTR -44[rbp]
	mov	ebx, eax
	mov	edx, DWORD PTR -44[rbp]
	mov	eax, DWORD PTR -48[rbp]
	mov	esi, edx
	mov	edi, eax
	call	USCLN
	mov	esi, eax
	mov	eax, ebx
	cdq
	idiv	esi
	mov	ecx, eax
	mov	edx, DWORD PTR -44[rbp]
	mov	eax, DWORD PTR -48[rbp]
	mov	esi, eax
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	printf@PLT
	call	clock@PLT
	mov	QWORD PTR -32[rbp], rax
	mov	rax, QWORD PTR -32[rbp]
	sub	rax, QWORD PTR -40[rbp]
	cvtsi2sd	xmm0, rax
	movsd	xmm1, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -24[rbp], xmm0
	mov	rax, QWORD PTR -24[rbp]
	mov	QWORD PTR -56[rbp], rax
	movsd	xmm0, QWORD PTR -56[rbp]
	lea	rdi, .LC3[rip]
	mov	eax, 1
	call	printf@PLT
	mov	eax, 0
	add	rsp, 56
	pop	rbx
	pop	rbp
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
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
