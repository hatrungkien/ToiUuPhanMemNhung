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
	.file	"bai6_toiuu.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%d = \000"
	.global	__aeabi_idivmod
	.global	__aeabi_i2d
	.global	__aeabi_dcmpeq
	.align	2
.LC1:
	.ascii	"%d \000"
	.global	__aeabi_idiv
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
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #36
	ldr	r3, .L9
	str	r3, [fp, #-44]
	bl	clock
	str	r0, [fp, #-36]
	ldr	r1, [fp, #-44]
	ldr	r0, .L9+4
	bl	printf
	mov	r3, #2
	str	r3, [fp, #-40]
	b	.L2
.L5:
	ldr	r3, [fp, #-44]
	ldr	r1, [fp, #-40]
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	mov	r2, #0
	mov	r3, #0
	sub	r1, fp, #28
	ldmia	r1, {r0-r1}
	bl	__aeabi_dcmpeq
	mov	r3, r0
	cmp	r3, #0
	beq	.L8
	ldr	r1, [fp, #-40]
	ldr	r0, .L9+8
	bl	printf
	ldr	r1, [fp, #-40]
	ldr	r0, [fp, #-44]
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-44]
	b	.L2
.L8:
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
.L2:
	ldr	r3, [fp, #-44]
	cmp	r3, #1
	bgt	.L5
	bl	clock
	str	r0, [fp, #-32]
	ldr	r2, [fp, #-32]
	ldr	r3, [fp, #-36]
	sub	r3, r2, r3
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r2, #0
	ldr	r3, .L9+12
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	sub	r3, fp, #20
	ldmia	r3, {r2-r3}
	ldr	r0, .L9+16
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
	.word	.LC0
	.word	.LC1
	.word	1093567616
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 5.5.0-12ubuntu1) 5.5.0 20171010"
	.section	.note.GNU-stack,"",%progbits
