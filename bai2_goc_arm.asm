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
	.file	"bai2_goc.c"
	.comm	x,4,4
	.comm	y,4,4
	.global	__aeabi_idivmod
	.global	__aeabi_i2d
	.global	__aeabi_d2iz
	.text
	.align	2
	.global	USCLN
	.syntax unified
	.arm
	.type	USCLN, %function
USCLN:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #28
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	ldr	r3, [fp, #-36]
	cmp	r3, #0
	bne	.L2
	ldr	r3, [fp, #-32]
	b	.L3
.L2:
	ldr	r3, [fp, #-32]
	ldr	r1, [fp, #-36]
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	str	r3, [fp, #-24]
	ldr	r1, [fp, #-24]
	ldr	r0, [fp, #-36]
	bl	USCLN
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	sub	r1, fp, #20
	ldmia	r1, {r0-r1}
	bl	__aeabi_d2iz
	mov	r3, r0
.L3:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	USCLN, .-USCLN
	.global	__aeabi_ddiv
	.align	2
	.global	BSCNN
	.syntax unified
	.arm
	.type	BSCNN, %function
BSCNN:
	@ args = 0, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #28
	str	r0, [fp, #-32]
	str	r1, [fp, #-36]
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-36]
	mul	r3, r2, r3
	str	r3, [fp, #-28]
	ldr	r1, [fp, #-36]
	ldr	r0, [fp, #-32]
	bl	USCLN
	mov	r3, r0
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	ldr	r0, [fp, #-28]
	bl	__aeabi_i2d
	sub	r3, fp, #20
	ldmia	r3, {r2-r3}
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	mov	r0, r3
	mov	r1, r4
	bl	__aeabi_d2iz
	mov	r3, r0
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-24]
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
	.size	BSCNN, .-BSCNN
	.section	.rodata
	.align	2
.LC0:
	.ascii	"USCLN cua %d va %d la: %d\012\000"
	.align	2
.LC1:
	.ascii	"BSCNN cua %d va %d la: %d\000"
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
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, r5, fp, lr}
	add	fp, sp, #12
	sub	sp, sp, #16
	bl	clock
	str	r0, [fp, #-28]
	ldr	r3, .L8
	mov	r2, #97
	str	r2, [r3]
	ldr	r3, .L8+4
	mov	r2, #53
	str	r2, [r3]
	ldr	r3, .L8
	ldr	r4, [r3]
	ldr	r3, .L8+4
	ldr	r5, [r3]
	ldr	r3, .L8
	ldr	r2, [r3]
	ldr	r3, .L8+4
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	USCLN
	mov	r3, r0
	mov	r2, r5
	mov	r1, r4
	ldr	r0, .L8+8
	bl	printf
	ldr	r3, .L8
	ldr	r4, [r3]
	ldr	r3, .L8+4
	ldr	r5, [r3]
	ldr	r3, .L8
	ldr	r2, [r3]
	ldr	r3, .L8+4
	ldr	r3, [r3]
	mov	r1, r3
	mov	r0, r2
	bl	BSCNN
	mov	r3, r0
	mov	r2, r5
	mov	r1, r4
	ldr	r0, .L8+12
	bl	printf
	bl	clock
	str	r0, [fp, #-24]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	sub	r3, r2, r3
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r2, #0
	ldr	r3, .L8+16
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	sub	r3, fp, #20
	ldmia	r3, {r2-r3}
	ldr	r0, .L8+20
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #12
	@ sp needed
	pop	{r4, r5, fp, pc}
.L9:
	.align	2
.L8:
	.word	x
	.word	y
	.word	.LC0
	.word	.LC1
	.word	1093567616
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 5.5.0-12ubuntu1) 5.5.0 20171010"
	.section	.note.GNU-stack,"",%progbits
