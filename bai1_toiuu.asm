	.file	"bai1_toiuu.c"
	.intel_syntax noprefix
	.text
	.section	.rodata
.LC0:
	.string	"Giai thua 10 la: %d"
.LC2:
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
	sub	rsp, 32
	call	clock@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	DWORD PTR -32[rbp], 1
	mov	DWORD PTR -28[rbp], 1
	jmp	.L2
.L3:
	mov	eax, DWORD PTR -32[rbp]
	imul	eax, DWORD PTR -28[rbp]
	mov	DWORD PTR -32[rbp], eax
	add	DWORD PTR -28[rbp], 1
.L2:
	cmp	DWORD PTR -28[rbp], 10
	jle	.L3
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
	movq	xmm0, rax
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
