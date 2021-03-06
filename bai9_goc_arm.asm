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
	.file	"bai9_goc.c"
	.comm	f0,8,8
	.global	__aeabi_dadd
	.global	__aeabi_i2d
	.global	__aeabi_dcmpgt
	.global	__aeabi_d2iz
	.text
	.align	2
	.global	fibonacci
	.syntax unified
	.arm
	.type	fibonacci, %function
fibonacci:
	@ args = 0, pretend = 0, frame = 32
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #36
	str	r0, [fp, #-40]
	ldr	r2, .L8
	mov	r3, #0
	mov	r4, #0
	stm	r2, {r3-r4}
	mov	r3, #0
	ldr	r4, .L8+4
	str	r3, [fp, #-36]
	str	r4, [fp, #-32]
	mov	r3, #0
	ldr	r4, .L8+4
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bge	.L2
	mvn	r3, #0
	b	.L3
.L2:
	ldr	r3, [fp, #-40]
	cmp	r3, #0
	bne	.L4
	ldr	r3, [fp, #-40]
	b	.L3
.L4:
	ldr	r3, [fp, #-40]
	cmp	r3, #1
	bne	.L5
	ldr	r3, [fp, #-40]
	b	.L3
.L5:
	mov	r3, #0
	mov	r4, #1073741824
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	b	.L6
.L7:
	ldr	r2, .L8
	sub	r4, fp, #36
	ldmia	r4, {r3-r4}
	stm	r2, {r3-r4}
	sub	r4, fp, #28
	ldmia	r4, {r3-r4}
	str	r3, [fp, #-36]
	str	r4, [fp, #-32]
	ldr	r3, .L8
	ldmia	r3, {r0-r1}
	sub	r3, fp, #36
	ldmia	r3, {r2-r3}
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-28]
	str	r4, [fp, #-24]
	mov	r2, #0
	ldr	r3, .L8+4
	sub	r1, fp, #20
	ldmia	r1, {r0-r1}
	bl	__aeabi_dadd
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
.L6:
	ldr	r0, [fp, #-40]
	bl	__aeabi_i2d
	sub	r3, fp, #20
	ldmia	r3, {r2-r3}
	bl	__aeabi_dcmpgt
	mov	r3, r0
	cmp	r3, #0
	bne	.L7
	sub	r1, fp, #28
	ldmia	r1, {r0-r1}
	bl	__aeabi_d2iz
	mov	r3, r0
.L3:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L9:
	.align	2
.L8:
	.word	f0
	.word	1072693248
	.size	fibonacci, .-fibonacci
	.section	.rodata
	.align	2
.LC0:
	.ascii	"30 so dau tien cua day so Fibonacci: \000"
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
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #28
	bl	clock
	str	r0, [fp, #-28]
	ldr	r0, .L14
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-32]
	b	.L11
.L12:
	ldr	r0, [fp, #-32]
	bl	fibonacci
	mov	r3, r0
	mov	r1, r3
	ldr	r0, .L14+4
	bl	printf
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L11:
	ldr	r3, [fp, #-32]
	cmp	r3, #29
	ble	.L12
	bl	clock
	str	r0, [fp, #-24]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	sub	r3, r2, r3
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r2, #0
	ldr	r3, .L14+8
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	sub	r3, fp, #20
	ldmia	r3, {r2-r3}
	ldr	r0, .L14+12
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L15:
	.align	2
.L14:
	.word	.LC0
	.word	.LC1
	.word	1093567616
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 5.5.0-12ubuntu1) 5.5.0 20171010"
	.section	.note.GNU-stack,"",%progbits
