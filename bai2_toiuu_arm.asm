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
	.file	"bai2_toiuu.c"
	.global	__aeabi_idivmod
	.text
	.align	2
	.global	USCLN
	.syntax unified
	.arm
	.type	USCLN, %function
USCLN:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L2
	ldr	r3, [fp, #-16]
	b	.L3
.L2:
	ldr	r3, [fp, #-16]
	ldr	r1, [fp, #-20]
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	str	r3, [fp, #-8]
	ldr	r1, [fp, #-8]
	ldr	r0, [fp, #-20]
	bl	USCLN
	mov	r3, r0
.L3:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
	.size	USCLN, .-USCLN
	.section	.rodata
	.align	2
.LC0:
	.ascii	"USCLN cua %d va %d la: %d\012\000"
	.global	__aeabi_idiv
	.align	2
.LC1:
	.ascii	"BSCNN cua %d va %d la: %d\000"
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
	str	r0, [fp, #-36]
	mov	r3, #97
	str	r3, [fp, #-32]
	mov	r3, #53
	str	r3, [fp, #-28]
	ldr	r1, [fp, #-28]
	ldr	r0, [fp, #-32]
	bl	USCLN
	mov	r3, r0
	ldr	r2, [fp, #-28]
	ldr	r1, [fp, #-32]
	ldr	r0, .L6
	bl	printf
	ldr	r3, [fp, #-32]
	ldr	r2, [fp, #-28]
	mul	r4, r2, r3
	ldr	r1, [fp, #-28]
	ldr	r0, [fp, #-32]
	bl	USCLN
	mov	r3, r0
	mov	r1, r3
	mov	r0, r4
	bl	__aeabi_idiv
	mov	r3, r0
	ldr	r2, [fp, #-28]
	ldr	r1, [fp, #-32]
	ldr	r0, .L6+4
	bl	printf
	bl	clock
	str	r0, [fp, #-24]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-36]
	sub	r3, r2, r3
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r2, #0
	ldr	r3, .L6+8
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	sub	r3, fp, #20
	ldmia	r3, {r2-r3}
	ldr	r0, .L6+12
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L7:
	.align	2
.L6:
	.word	.LC0
	.word	.LC1
	.word	1093567616
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 5.5.0-12ubuntu1) 5.5.0 20171010"
	.section	.note.GNU-stack,"",%progbits
