	.file	"bai2_goc.c"
	.intel_syntax noprefix
	.text
	.comm	x,4,4
	.comm	y,4,4
	.globl	USCLN
	.type	USCLN, @function
USCLN:
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
	mov	DWORD PTR -24[rbp], esi
	cmp	DWORD PTR -24[rbp], 0
	jne	.L2
	mov	eax, DWORD PTR -20[rbp]
	jmp	.L3
.L2:
	mov	eax, DWORD PTR -20[rbp]
	cdq
	idiv	DWORD PTR -24[rbp]
	mov	DWORD PTR -12[rbp], edx
	mov	edx, DWORD PTR -12[rbp]
	mov	eax, DWORD PTR -24[rbp]
	mov	esi, edx
	mov	edi, eax
	call	USCLN
	cvtsi2sd	xmm0, eax
	movsd	QWORD PTR -8[rbp], xmm0
	movsd	xmm0, QWORD PTR -8[rbp]
	cvttsd2si	eax, xmm0
.L3:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	USCLN, .-USCLN
	.globl	BSCNN
	.type	BSCNN, @function
BSCNN:
.LFB1:
	.cfi_startproc
	endbr64
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 32
	mov	DWORD PTR -20[rbp], edi
	mov	DWORD PTR -24[rbp], esi
	mov	eax, DWORD PTR -20[rbp]
	imul	eax, DWORD PTR -24[rbp]
	mov	DWORD PTR -16[rbp], eax
	mov	edx, DWORD PTR -24[rbp]
	mov	eax, DWORD PTR -20[rbp]
	mov	esi, edx
	mov	edi, eax
	call	USCLN
	cvtsi2sd	xmm0, eax
	movsd	QWORD PTR -8[rbp], xmm0
	cvtsi2sd	xmm0, DWORD PTR -16[rbp]
	divsd	xmm0, QWORD PTR -8[rbp]
	cvttsd2si	eax, xmm0
	mov	DWORD PTR -12[rbp], eax
	mov	eax, DWORD PTR -12[rbp]
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE1:
	.size	BSCNN, .-BSCNN
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
.LFB2:
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
	mov	DWORD PTR x[rip], 97
	mov	DWORD PTR y[rip], 53
	mov	edx, DWORD PTR y[rip]
	mov	eax, DWORD PTR x[rip]
	mov	esi, edx
	mov	edi, eax
	call	USCLN
	mov	ecx, eax
	mov	edx, DWORD PTR y[rip]
	mov	eax, DWORD PTR x[rip]
	mov	esi, eax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	mov	edx, DWORD PTR y[rip]
	mov	eax, DWORD PTR x[rip]
	mov	esi, edx
	mov	edi, eax
	call	BSCNN
	mov	ecx, eax
	mov	edx, DWORD PTR y[rip]
	mov	eax, DWORD PTR x[rip]
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
.LFE2:
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
