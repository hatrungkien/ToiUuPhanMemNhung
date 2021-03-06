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
	.file	"bai5_goc.c"
	.global	x
	.bss
	.align	2
	.type	x, %object
	.size	x, 4
x:
	.space	4
	.comm	count,4,4
	.global	__aeabi_idivmod
	.global	__aeabi_i2d
	.global	__aeabi_d2iz
	.text
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
	bgt	.L2
	mov	r3, #0
	b	.L3
.L2:
	mov	r3, #2
	str	r3, [fp, #-16]
	b	.L4
.L6:
	ldr	r3, [fp, #-24]
	ldr	r1, [fp, #-16]
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	mov	r2, r3
	ldr	r3, .L7
	str	r2, [r3]
	ldr	r3, .L7
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L5
	mov	r3, #0
	b	.L3
.L5:
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L4:
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
	mov	r2, r0
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bge	.L6
	mov	r3, #1
.L3:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L8:
	.align	2
.L7:
	.word	x
	.size	isPrimeNumber, .-isPrimeNumber
	.section	.rodata
	.align	2
.LC0:
	.ascii	"%d\012\000"
	.text
	.align	2
	.global	writeData
	.syntax unified
	.arm
	.type	writeData, %function
writeData:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	str	r0, [fp, #-8]
	ldr	r1, [fp, #-8]
	ldr	r0, .L10
	bl	printf
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L11:
	.align	2
.L10:
	.word	.LC0
	.size	writeData, .-writeData
	.section	.rodata
	.align	2
.LC1:
	.ascii	"Liet ke tat ca cac so co 5 chu so:\000"
	.align	2
.LC2:
	.ascii	"Tong cac so nguyen to co 5 chu so la: %d\000"
	.global	__aeabi_ddiv
	.align	2
.LC3:
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
	ldr	r3, .L17
	mov	r2, #0
	str	r2, [r3]
	ldr	r0, .L17+4
	bl	printf
	ldr	r3, .L17+8
	str	r3, [fp, #-32]
	b	.L13
.L15:
	ldr	r0, [fp, #-32]
	bl	isPrimeNumber
	mov	r3, r0
	cmp	r3, #0
	beq	.L14
	ldr	r0, [fp, #-32]
	bl	writeData
	ldr	r3, .L17
	ldr	r3, [r3]
	add	r3, r3, #1
	ldr	r2, .L17
	str	r3, [r2]
.L14:
	ldr	r3, [fp, #-32]
	add	r3, r3, #2
	str	r3, [fp, #-32]
.L13:
	ldr	r3, [fp, #-32]
	ldr	r2, .L17+12
	cmp	r3, r2
	ble	.L15
	ldr	r3, .L17
	ldr	r3, [r3]
	mov	r1, r3
	ldr	r0, .L17+16
	bl	printf
	bl	clock
	str	r0, [fp, #-24]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	sub	r3, r2, r3
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r2, #0
	ldr	r3, .L17+20
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	sub	r3, fp, #20
	ldmia	r3, {r2-r3}
	ldr	r0, .L17+24
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L18:
	.align	2
.L17:
	.word	count
	.word	.LC1
	.word	10001
	.word	99998
	.word	.LC2
	.word	1093567616
	.word	.LC3
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 5.5.0-12ubuntu1) 5.5.0 20171010"
	.section	.note.GNU-stack,"",%progbits
