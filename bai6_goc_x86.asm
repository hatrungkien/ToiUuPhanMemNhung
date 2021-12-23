	.file	"bai6_goc.c"
	.intel_syntax noprefix
	.text
	.comm	x,4,4
	.comm	i,4,4
	.section	.rodata
.LC0:
	.string	"%d "
	.text
	.globl	phanTichThuaSoNguyenTo
	.type	phanTichThuaSoNguyenTo, @function
phanTichThuaSoNguyenTo:
.LFB0:
	.cfi_startproc
	push	rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	mov	rbp, rsp
	.cfi_def_cfa_register 6
	sub	rsp, 16
	mov	DWORD PTR -4[rbp], edi
	mov	DWORD PTR i[rip], 2
	jmp	.L2
.L4:
	mov	ecx, DWORD PTR i[rip]
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	ecx
	mov	eax, edx
	mov	DWORD PTR x[rip], eax
	mov	eax, DWORD PTR x[rip]
	test	eax, eax
	jne	.L3
	mov	eax, DWORD PTR i[rip]
	mov	esi, eax
	lea	rdi, .LC0[rip]
	mov	eax, 0
	call	printf@PLT
	mov	esi, DWORD PTR i[rip]
	mov	eax, DWORD PTR -4[rbp]
	cdq
	idiv	esi
	mov	DWORD PTR -4[rbp], eax
	jmp	.L2
.L3:
	mov	eax, DWORD PTR i[rip]
	add	eax, 1
	mov	DWORD PTR i[rip], eax
.L2:
	cmp	DWORD PTR -4[rbp], 1
	jg	.L4
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE0:
	.size	phanTichThuaSoNguyenTo, .-phanTichThuaSoNguyenTo
	.section	.rodata
.LC1:
	.string	"%d = "
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
	sub	rsp, 48
	mov	DWORD PTR -28[rbp], 999999990
	call	clock@PLT
	mov	QWORD PTR -24[rbp], rax
	mov	eax, DWORD PTR -28[rbp]
	mov	esi, eax
	lea	rdi, .LC1[rip]
	mov	eax, 0
	call	printf@PLT
	mov	eax, DWORD PTR -28[rbp]
	mov	edi, eax
	call	phanTichThuaSoNguyenTo
	call	clock@PLT
	mov	QWORD PTR -16[rbp], rax
	mov	rax, QWORD PTR -16[rbp]
	sub	rax, QWORD PTR -24[rbp]
	cvtsi2sd	xmm0, rax
	movsd	xmm1, QWORD PTR .LC2[rip]
	divsd	xmm0, xmm1
	movsd	QWORD PTR -8[rbp], xmm0
	mov	rax, QWORD PTR -8[rbp]
	mov	QWORD PTR -40[rbp], rax
	movsd	xmm0, QWORD PTR -40[rbp]
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
	.ident	"GCC: (Ubuntu 7.5.0-3ubuntu1~18.04) 7.5.0"
	.section	.note.GNU-stack,"",@progbits
