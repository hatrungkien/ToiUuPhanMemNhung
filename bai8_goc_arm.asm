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
	.file	"bai8_goc.c"
	.global	__aeabi_idivmod
	.global	__aeabi_idiv
	.text
	.align	2
	.global	isThuanNghich
	.syntax unified
	.arm
	.type	isThuanNghich, %function
isThuanNghich:
	@ args = 0, pretend = 0, frame = 112
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #116
	str	r0, [fp, #-120]
	ldr	r3, .L9
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-116]
	mov	r3, #10
	str	r3, [fp, #-108]
.L2:
	ldr	r4, [fp, #-116]
	add	r3, r4, #1
	str	r3, [fp, #-116]
	ldr	r3, [fp, #-120]
	ldr	r1, [fp, #-108]
	mov	r0, r3
	bl	__aeabi_idivmod
	mov	r3, r1
	mov	r2, r3
	lsl	r3, r4, #2
	sub	r1, fp, #12
	add	r3, r1, r3
	str	r2, [r3, #-84]
	ldr	r1, [fp, #-108]
	ldr	r0, [fp, #-120]
	bl	__aeabi_idiv
	mov	r3, r0
	str	r3, [fp, #-120]
	ldr	r3, [fp, #-120]
	cmp	r3, #0
	bgt	.L2
	mov	r3, #0
	str	r3, [fp, #-112]
	b	.L3
.L6:
	ldr	r2, [fp, #-116]
	ldr	r3, [fp, #-112]
	sub	r3, r2, r3
	str	r3, [fp, #-104]
	ldr	r3, [fp, #-104]
	sub	r3, r3, #1
	str	r3, [fp, #-100]
	ldr	r3, [fp, #-112]
	lsl	r3, r3, #2
	sub	r2, fp, #12
	add	r3, r2, r3
	ldr	r2, [r3, #-84]
	ldr	r3, [fp, #-100]
	lsl	r3, r3, #2
	sub	r1, fp, #12
	add	r3, r1, r3
	ldr	r3, [r3, #-84]
	cmp	r2, r3
	beq	.L4
	mov	r3, #0
	b	.L7
.L4:
	ldr	r3, [fp, #-112]
	add	r3, r3, #1
	str	r3, [fp, #-112]
.L3:
	ldr	r3, [fp, #-116]
	lsr	r2, r3, #31
	add	r3, r2, r3
	asr	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-112]
	cmp	r2, r3
	bgt	.L6
	mov	r3, #1
.L7:
	mov	r0, r3
	ldr	r3, .L9
	ldr	r2, [fp, #-16]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L8
	bl	__stack_chk_fail
.L8:
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L10:
	.align	2
.L9:
	.word	__stack_chk_guard
	.size	isThuanNghich, .-isThuanNghich
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
	ldr	r0, .L12
	bl	printf
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L13:
	.align	2
.L12:
	.word	.LC0
	.size	writeData, .-writeData
	.section	.rodata
	.align	2
.LC1:
	.ascii	"Tong cac so thuan nghich co 6 chu so la: %d\000"
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
	mov	r3, #0
	str	r3, [fp, #-36]
	ldr	r3, .L19
	str	r3, [fp, #-32]
	b	.L15
.L17:
	ldr	r0, [fp, #-32]
	bl	isThuanNghich
	mov	r3, r0
	cmp	r3, #0
	beq	.L16
	ldr	r0, [fp, #-32]
	bl	writeData
	ldr	r3, [fp, #-36]
	add	r3, r3, #1
	str	r3, [fp, #-36]
.L16:
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L15:
	ldr	r3, [fp, #-32]
	ldr	r2, .L19+4
	cmp	r3, r2
	ble	.L17
	ldr	r1, [fp, #-36]
	ldr	r0, .L19+8
	bl	printf
	bl	clock
	str	r0, [fp, #-24]
	ldr	r2, [fp, #-24]
	ldr	r3, [fp, #-28]
	sub	r3, r2, r3
	mov	r0, r3
	bl	__aeabi_i2d
	mov	r2, #0
	ldr	r3, .L19+12
	bl	__aeabi_ddiv
	mov	r3, r0
	mov	r4, r1
	str	r3, [fp, #-20]
	str	r4, [fp, #-16]
	sub	r3, fp, #20
	ldmia	r3, {r2-r3}
	ldr	r0, .L19+16
	bl	printf
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L20:
	.align	2
.L19:
	.word	100000
	.word	999999
	.word	.LC1
	.word	1093567616
	.word	.LC2
	.size	main, .-main
	.ident	"GCC: (Ubuntu/Linaro 5.5.0-12ubuntu1) 5.5.0 20171010"
	.section	.note.GNU-stack,"",%progbits
