.arch armv6
	.eabi_attribute 27, 3
	.eabi_attribute 28, 1
	.fpu vfp
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"Fac_with_overflow.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"Enter an integer:\000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"error! input is negative and cannot be calculated.\000"
	.align	2
.LC3:
	.ascii	"Factorial of %d = %d\000"
	.align	2
.LC4:
	.ascii	"Overflow occurred\000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	mov	r3, #1
	str	r3, [fp, #-12]
	ldr	r0, .L8
	bl	printf
	sub	r3, fp, #16
	ldr	r0, .L8+4
	mov	r1, r3
	bl	__isoc99_scanf
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bge	.L2
	ldr	r0, .L8+8
	bl	printf
	b	.L1
.L2:
	mov	r3, #1
	str	r3, [fp, #-8]
	b	.L3
.L4:
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-8]
	mul	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L3:
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	ble	.L4
	ldr	r3, [fp, #-12]
	cmp	r3, #65280
	bge	.L5
	ldr	r3, [fp, #-16]
	ldr	r0, .L8+12
	mov	r1, r3
	ldr	r2, [fp, #-12]
	bl	printf
	b	.L6
.L5:
	ldr	r0, .L8+16
	bl	printf
.L6:
	mov	r3, #0
.L1:
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L9:
	.align	2
.L8:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
