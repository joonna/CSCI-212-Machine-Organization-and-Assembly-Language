	.arch armv6			@I don't know
	.eabi_attribute 27, 3		@I don't know
	.eabi_attribute 28, 1		@I don't know
	.fpu vfp			@I don't know
	.eabi_attribute 20, 1		@I don't know
	.eabi_attribute 21, 1		@I don't know
	.eabi_attribute 23, 3		@I don't know
	.eabi_attribute 24, 1		@I don't know
	.eabi_attribute 25, 1		@I don't know
	.eabi_attribute 26, 2		@I don't know
	.eabi_attribute 30, 6		@I don't know
	.eabi_attribute 34, 1		@I don't know
	.eabi_attribute 18, 4		@I don't know
	.file	"prog1.c"		@I don't know
	.section	.rodata		@I don't know
	.align	2			@I don't know
.LC0:					@I don't know
	.ascii	"Sum: %d\012\000"	@I don't know
	.text				@I don't know
	.align	2			@I don't know
	.global	main			@I don't know
	.type	main, %function		@I don't know
main:					@I don't know
	@ args = 0, pretend = 0, frame = 16		@I don't know
	@ frame_needed = 1, uses_anonymous_args = 0	@I don't know
	stmfd	sp!, {r4, fp, lr}	@I don't know
	add	fp, sp, #8		@I don't know
	sub	sp, sp, #20		@I don't know
	str	r0, [fp, #-24]		@I don't know
	str	r1, [fp, #-28]		@I don't know
	ldr	r3, [fp, #-24]		@I don't know
	cmp	r3, #3			@I don't know
	beq	.L2			@I don't know
	mov	r3, #0			@I don't know
	b	.L3			@I don't know
.L2:					@I don't know
	ldr	r3, [fp, #-28]		@I don't know
	add	r3, r3, #4		@I don't know
	ldr	r3, [r3]		@I don't know
	mov	r0, r3			@I don't know
	bl	atoi			@I don't know
	mov	r4, r0			@I don't know
	ldr	r3, [fp, #-28]		@I don't know
	add	r3, r3, #8		@I don't know
	ldr	r3, [r3]		@I don't know
	mov	r0, r3			@I don't know
	bl	atoi			@I don't know
	mov	r3, r0			@I don't know
	add	r3, r4, r3		@I don't know
	str	r3, [fp, #-16]		@I don't know
	ldr	r0, .L4			@I don't know
	ldr	r1, [fp, #-16]		@I don't know
	bl	printf			@I don't know
	ldr	r3, [fp, #-16]		@I don't know
.L3:					@I don't know
	mov	r0, r3			@I don't know
	sub	sp, fp, #8		@I don't know
	@ sp needed			@I don't know
	ldmfd	sp!, {r4, fp, pc}	@I don't know
.L5:					@I don't know
	.align	2			@I don't know
.L4:					@I don't know
	.word	.LC0			@I don't know
	.size	main, .-main		@I don't know
	.ident	"GCC: (Raspbian 4.9.2-10) 4.9.2"	@I don't know
	.section	.note.GNU-stack,"",%progbits	@I don't know
