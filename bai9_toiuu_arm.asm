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
	.file	"bai9_toiuu.c"
	.text
	.align	2
	.global	fibonacci
	.syntax unified
	.arm
	.type	fibonacci, %function
fibonacci:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	@ link register save eliminated.
	str	fp, [sp, #-4]!
	add	fp, sp, #0
	sub	sp, sp, #28
	str	r0, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #1
	str	r3, [fp, #-20]
	mov	r3, #1
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bge	.L2
	mvn	r3, #0
	b	.L3
.L2:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	beq	.L4
	ldr	r3, [fp, #-24]
	cmp	r3, #1
	bne	.L5
.L4:
	ldr	r3, [fp, #-24]
	b	.L3
.L5:
	mov	r3, #2
	str	r3, [fp, #-12]
	b	.L6
.L7:
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-20]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L6:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	blt	.L7
	ldr	r3, [fp, #-16]
.L3:
	mov	r0, r3
	add	sp, fp, #0
	@ sp needed
	ldr	fp, [sp], #4
	bx	lr
	.size	fibonacci, .-fibonacci
	.section	.rodata
	.align	2
.LC0:
	.ascii	"30 so dau tien cua day so Fibonacci: \000"
	.align	2
.LC1:
	.ascii	"%d \000"
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
	bl	clock
	str	r0, [fp, #-28]
	ldr	r0, .L12
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L9
.L10:
	ldr	r0, [fp, #-32]
	bl	fibonacci
	mov	r3, r0
	mov	r1, r3
	ldr	r0, .L12+4
	bl	printf
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L9:
	ldr	r3, [fp, #-32]
	cmp	r3, #29
	ble	.L10
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
