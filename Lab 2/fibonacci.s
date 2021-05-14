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
	.file	"fibonacci.c"
	.text
	.align	2
	.global	fib
	.type	fib, %function
fib:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #12
	str	r0, [fp, #-16]
	ldr	r3, [fp, #-16]
	cmp	r3, #1
	beq	.L2
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L3
.L2:
	ldr	r3, [fp, #-16]
	b	.L4
.L3:
	ldr	r3, [fp, #-16]
	sub	r3, r3, #1
	mov	r0, r3
	bl	fib
	mov	r4, r0
	ldr	r3, [fp, #-16]
	sub	r3, r3, #2
	mov	r0, r3
	bl	fib
	mov	r3, r0
	add	r3, r4, r3
.L4:
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	ldmfd	sp!, {r4, fp, pc}
	.size	fib, .-fib
	.section	.rodata
	.align	2
.LC0:
	.ascii	"input number of terms in fibonacci sequence\000"
	.align	2
.LC1:
	.ascii	"%d\000"
	.align	2
.LC2:
	.ascii	"\012%d terms in the finoacci series\012\000"
	.align	2
.LC3:
	.ascii	"%d \000"
	.text
	.align	2
	.global	main
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	stmfd	sp!, {fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r0, .L9
	bl	printf
	sub	r3, fp, #12
	ldr	r0, .L9+4
	mov	r1, r3
	bl	__isoc99_scanf
	ldr	r3, [fp, #-12]
	ldr	r0, .L9+8
	mov	r1, r3
	bl	printf
	b	.L6
.L7:
	ldr	r0, [fp, #-8]
	bl	fib
	mov	r3, r0
	ldr	r0, .L9+12
	mov	r1, r3
	bl	printf
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L6:
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-8]
	cmp	r2, r3
	blt	.L7
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	ldmfd	sp!, {fp, pc}
.L10:
	.align	2
.L9:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.size	main, .-main
	.ident	"GCC: (Raspbian 4.9.2-10) 4.9.2"
	.section	.note.GNU-stack,"",%progbits
