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
	.file	"bai4_toiuu.c"
	.global	__aeabi_i2d
	.global	__aeabi_d2iz
	.global	__aeabi_idivmod
	.text
	.align	2
	.global	isPrimeNumber
	.syntax unified
	.arm
	.type	isPrimeNumber, %function
isPrimeNumber:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #28
	str	r0, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #1
	bgt	.L2
	mov	r3, #0
	b	.L3
.L2:
	ldr	r0, [fp, #-32]
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	sqrt
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__aeabi_d2iz
	mov	r3, r0
	str	r3, [fp, #-20]
	mov	r3, #2
	str	r3, [fp, #-24]
	b	.L4
.L6:
	ldr	r3, [fp, #-32]
	ldr	r1, [fp, #-24]
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L5
	mov	r3, #0
	b	.L3
.L5:
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L4:
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	ble	.L6
	mov	r3, #1
.L3:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	isPrimeNumber, .-isPrimeNumber
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%d so nguyen to dau tien la: \012\000"
	.align	2
.LC1:
	.ascii	"%d \000"
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
	mov	r3, #20
	str	r3, [fp, #-32]
	bl	clock
	str	r0, [fp, #-28]
	ldr	r1, [fp, #-32]
	ldr	r0, .L12
	bl	printf
	mov	r3, #0
	str	r3, [fp, #-40]
	mov	r3, #2
	str	r3, [fp, #-36]
	b	.L8
.L10:
	ldr	r0, [fp, #-36]
	bl	isPrimeNumber
	mov	r3, r0
	cmp	r3, #0
	beq	.L9
	ldr	r1, [fp, #-36]
	ldr	r0, .L12+4
	bl	printf
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
.L9:
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-36]
.L8:
	ldr	r2, [fp, #-40]
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	blt	.L10
	bl	clock
	str	r0, [fp, #-24]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	sub	r3, r2, r3
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r2, #0
	ldr	r3, .L12+8
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	sub	r3, fp, #20
	ldmia	r3, {r2-r3}
	ldr	r0, .L12+12
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L13:
	.align	2
.L12:
	.word	.LC0
	.word	.LC1
	.word	1093567616
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 5.5.0-12ubuntu1) 5.5.0 20171010"
	.section	.note.GNU-stack,"",%progbits
