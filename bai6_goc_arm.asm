	.arch armv5t
	.fpu softvfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 0
	.eabi_attribute 18, 4
	.file	"bai6_goc.c"
	.comm	x,4,4
	.comm	i,4,4
	.global	__aeabi_idivmod
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%d \000"
	.global	__aeabi_idiv
	.text
	.align	2
	.global	phanTichThuaSoNguyenTo
	.syntax unified
	.arm
	.type	phanTichThuaSoNguyenTo, %function
phanTichThuaSoNguyenTo:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r3, .L5
	mov	r2, #2
	str	r2, [r3]
	b	.L2
.L4:
	ldr	r3, .L5
	ldr	r2, [r3]
	ldr	r3, [fp, #-8]
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	mov	r2, r3
	ldr	r3, .L5+4
	str	r2, [r3]
	ldr	r3, .L5+4
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L3
	ldr	r3, .L5
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, .L5+8
	bl	printf
	ldr	r3, .L5
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, [fp, #-8]
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-8]
	b	.L2
.L3:
	ldr	r3, .L5
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L5
	str	r3, [r2]
.L2:
	ldr	r3, [fp, #-8]
	cmp	r3, #1
	bgt	.L4
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L6:
	.align	2
.L5:
	.word	i
	.word	x
	.word	.LC0
	.size	phanTichThuaSoNguyenTo, .-phanTichThuaSoNguyenTo
	.section	.rodata
	.align	2
.LC1:
	.ascii	"%d = \000"
	.global	__aeabi_i2d
	.global	__aeabi_ddiv
	.align	2
.LC2:
	.ascii	"\012Exe time: %f\012\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #28
	ldr	r3, .L9
	str	r3, [fp, #-32]
	bl	clock
	str	r0, [fp, #-28]
	ldr	r1, [fp, #-32]
	ldr	r0, .L9+4
	bl	printf
	ldr	r0, [fp, #-32]
	bl	phanTichThuaSoNguyenTo
	bl	clock
	str	r0, [fp, #-24]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	sub	r3, r2, r3
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r2, #0
	ldr	r3, .L9+8
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	sub	r3, fp, #20
	ldmia	r3, {r2-r3}
	ldr	r0, .L9+12
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L10:
	.align	2
.L9:
	.word	999999990
	.word	.LC1
	.word	1093567616
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 5.5.0-12ubuntu1) 5.5.0 20171010"
	.section	.note.GNU-stack,"",%progbits
