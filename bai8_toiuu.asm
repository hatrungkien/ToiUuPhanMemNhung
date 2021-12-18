	.file	"bai8_toiuu.c"
	.intel_syntax noprefix
	.text
	.globl	DEC_10
	.section	.rodata
	.align 4
	.type	DEC_10, @object
	.size	DEC_10, 4
DEC_10:
	.long	10
	.text
	.globl	isThuanNghich
	.type	isThuanNghich, @function
isThuanNghich:
.LFB0:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	add	rsp, -128
	mov	DWORD PTR -116[rbp], edi
	mov	rax, QWORD PTR fs:40
	mov	QWORD PTR -8[rbp], rax
	xor	eax, eax
	mov	DWORD PTR -108[rbp], 0
.L2:
	mov	esi, 10
	mov	ecx, DWORD PTR -108[rbp]
	lea	eax, 1[rcx]
	mov	DWORD PTR -108[rbp], eax
	mov	eax, DWORD PTR -116[rbp]
	cdq
	idiv	esi
	movsx	rax, ecx
	mov	DWORD PTR -96[rbp+rax*4], edx
	mov	esi, 10
	mov	eax, DWORD PTR -116[rbp]
	cdq
	idiv	esi
	mov	DWORD PTR -116[rbp], eax
	cmp	DWORD PTR -116[rbp], 0
	jg	.L2
	mov	eax, DWORD PTR -108[rbp]
	mov	edx, eax
	shr	edx, 31
	add	eax, edx
	sar	eax
	mov	DWORD PTR -100[rbp], eax
	mov	DWORD PTR -104[rbp], 0
	jmp	.L3
.L6:
	mov	eax, DWORD PTR -104[rbp]
	cdqe
	mov	edx, DWORD PTR -96[rbp+rax*4]
	mov	eax, DWORD PTR -108[rbp]
	sub	eax, DWORD PTR -104[rbp]
	sub	eax, 1
	cdqe
	mov	eax, DWORD PTR -96[rbp+rax*4]
	cmp	edx, eax
	je	.L4
	mov	eax, 0
	jmp	.L7
.L4:
	add	DWORD PTR -104[rbp], 1
.L3:
	mov	eax, DWORD PTR -104[rbp]
	cmp	eax, DWORD PTR -100[rbp]
	jl	.L6
	mov	eax, 1
.L7:
	mov	rdi, QWORD PTR -8[rbp]
	xor	rdi, QWORD PTR fs:40
	je	.L8
	call	__stack_chk_fail@PLT
.L8:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	isThuanNghich, .-isThuanNghich
	.section	.rodata
.LC0:
	.string	"%d\n"
	.align 8
.LC1:
	.string	"Tong cac so thuan nghich co 6 chu so la: %d"
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
	call	clock@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	DWORD PTR -32[rbp], 0
	mov	DWORD PTR -28[rbp], 100000
	jmp	.L10
.L12:
	mov	eax, DWORD PTR -28[rbp]
	mov	edi, eax
	call	isThuanNghich
	test	eax, eax
	je	.L11
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, eax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	add	DWORD PTR -32[rbp], 1
.L11:
	add	DWORD PTR -28[rbp], 1
.L10:
	cmp	DWORD PTR -28[rbp], 999999
	jle	.L12
	mov	eax, DWORD PTR -32[rbp]
	mov	esi, eax
	lea	rdi, .LC1[rip]
	mov	eax, 0
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
