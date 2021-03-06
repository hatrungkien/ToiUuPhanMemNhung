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
	.file	"bai10_toiuu.c"
	.text
	.align	2
	.global	fibonacci
	.syntax unified
	.arm
	.type	fibonacci, %function
fibonacci:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #12
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bge	.L2
	mvn	r3, #0
	b	.L3
.L2:
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	beq	.L4
	ldr	r3, [fp, #-16]
	cmp	r3, #1
	bne	.L5
.L4:
	ldr	r3, [fp, #-16]
	b	.L3
.L5:
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	mov	r0, r3
	bl	fibonacci
	mov	r4, r0
	ldr	r3, [fp, #-16]
	sub	r3, r3, #2
	mov	r0, r3
	bl	fibonacci
	mov	r3, r0
	add	r3, r4, r3
.L3:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	fibonacci, .-fibonacci
	.global	__aeabi_i2d
	.global	__aeabi_d2iz
	.global	__aeabi_idivmod
	.align	2
	.global	isPrimeNumber
	.syntax unified
	.arm
	.type	isPrimeNumber, %function
isPrimeNumber:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #20
	str	r0, [fp, #-24]
	ldr	r3, [fp, #-24]
	cmp	r3, #1
	bgt	.L7
	mov	r3, #0
	b	.L8
.L7:
	ldr	r0, [fp, #-24]
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
	str	r3, [fp, #-16]
	mov	r3, #2
	str	r3, [fp, #-20]
	b	.L9
.L11:
	ldr	r3, [fp, #-24]
	ldr	r1, [fp, #-20]
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	cmp	r3, #0
	bne	.L10
	mov	r3, #0
	b	.L8
.L10:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L9:
	ldr	r2, [fp, #-20]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	ble	.L11
	mov	r3, #1
.L8:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	isPrimeNumber, .-isPrimeNumber
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Cac so fibonacci nho hon %d va la so nguyen to: \000"
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
	bl	clock
	str	r0, [fp, #-36]
	ldr	r3, .L17
	str	r3, [fp, #-32]
	ldr	r1, [fp, #-32]
	ldr	r0, .L17+4
	bl	printf
	mov	r3, #0
	str	r3, [fp, #-40]
	b	.L13
.L15:
	ldr	r0, [fp, #-40]
	bl	fibonacci
	str	r0, [fp, #-28]
	ldr	r0, [fp, #-28]
	bl	isPrimeNumber
	mov	r3, r0
	cmp	r3, #0
	beq	.L14
	ldr	r1, [fp, #-28]
	ldr	r0, .L17+8
	bl	printf
.L14:
	ldr	r3, [fp, #-40]
	add	r3, r3, #1
	str	r3, [fp, #-40]
.L13:
	ldr	r0, [fp, #-40]
	bl	fibonacci
	mov	r2, r0
	ldr	r3, [fp, #-32]
	cmp	r2, r3
	blt	.L15
	bl	clock
	str	r0, [fp, #-24]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-36]
	sub	r3, r2, r3
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r2, #0
	ldr	r3, .L17+12
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	sub	r3, fp, #20
	ldmia	r3, {r2-r3}
	ldr	r0, .L17+16
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L18:
	.align	2
.L17:
	.word	9999990
	.word	.LC0
	.word	.LC1
	.word	1093567616
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 5.5.0-12ubuntu1) 5.5.0 20171010"
	.section	.note.GNU-stack,"",%progbits
