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
	.file	"bai7_goc.c"
	.global	DEC_10
	.section	.rodata
	.align	2
	.type	DEC_10, %object
	.size	DEC_10, 4
DEC_10:
	.word	10
	.comm	n,4,4
	.comm	total,8,8
	.global	__aeabi_idivmod
	.global	__aeabi_i2d
	.global	__aeabi_dadd
	.global	__aeabi_idiv
	.text
	.align	2
	.global	totalDigitsOfNumber
	.syntax unified
	.arm
	.type	totalDigitsOfNumber, %function
totalDigitsOfNumber:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #12
	str	r0, [fp, #-16]
	ldr	r2, .L4
	mov	r3, #0
	mov	r4, #0
	stm	r2, {r3-r4}
.L2:
	mov	r2, #10
	ldr	r3, [fp, #-16]
	mov	r1, r2
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	mov	r0, r3
	bl	__aeabi_i2d
	ldr	r3, .L4
	ldmia	r3, {r3-r4}
	mov	r2, r3
	mov	r3, r4
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	ldr	r2, .L4
	stm	r2, {r3-r4}
	mov	r3, #10
	mov	r1, r3
	ldr	r0, [fp, #-16]
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bgt	.L2
	ldr	r3, .L4
	ldmia	r3, {r3-r4}
	mov	r0, r3
	mov	r1, r4
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L5:
	.align	2
.L4:
	.word	total
	.size	totalDigitsOfNumber, .-totalDigitsOfNumber
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Tong cac chu so cua %d la: %f\000"
	.global	__aeabi_ddiv
	.align	2
.LC1:
	.ascii	"\012Exe time: %f\012\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #20
	ldr	r3, .L8
	ldr	r2, .L8+4
	str	r2, [r3]
	bl	clock
	str	r0, [fp, #-28]
	ldr	r3, .L8
	ldr	r4, [r3]
	ldr	r3, .L8
	ldr	r3, [r3]
	mov	r0, r3
	bl	totalDigitsOfNumber
	mov	r2, r0
	mov	r3, r1
	mov	r1, r4
	ldr	r0, .L8+8
	bl	printf
	bl	clock
	str	r0, [fp, #-24]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	sub	r3, r2, r3
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r2, #0
	ldr	r3, .L8+12
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	sub	r3, fp, #20
	ldmia	r3, {r2-r3}
	ldr	r0, .L8+16
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L9:
	.align	2
.L8:
	.word	n
	.word	1234567899
	.word	.LC0
	.word	1093567616
	.word	.LC1
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 5.5.0-12ubuntu1) 5.5.0 20171010"
	.section	.note.GNU-stack,"",%progbits
