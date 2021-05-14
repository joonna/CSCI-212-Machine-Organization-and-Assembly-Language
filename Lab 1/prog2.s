	.arch armv6		@I don't know
	.eabi_attribute 27, 3	@I don't know
	.eabi_attribute 28, 1	@I don't know
	.fpu vfp		@I don't know
	.eabi_attribute 20, 1	@I don't know
	.eabi_attribute 21, 1	@I don't know
	.eabi_attribute 23, 3	@I don't know
	.eabi_attribute 24, 1	@I don't know
	.eabi_attribute 25, 1	@I don't know
	.eabi_attribute 26, 2	@I don't know
	.eabi_attribute 30, 6	@I don't know
	.eabi_attribute 34, 1	@I don't know
	.eabi_attribute 18, 4	@I don't know
	.file	"prog2.c"	@I don't know
	.text			@I don't know
	.align	2		@I don't know
	.global	my_strange_function	@I don't know
	.type	my_strange_function, %function	@I don't know
my_strange_function:		@I don't know
	@ args = 0, pretend = 0, frame = 24	@I don't know
	@ frame_needed = 1, uses_anonymous_args = 0	@I don't know
	@ link register save eliminated.	@I don't know
	str	fp, [sp, #-4]!		@I don't know
	add	fp, sp, #0		@I don't know
	sub	sp, sp, #28		@I don't know
	strd	r0, [fp, #-28]		@I don't know
	ldrd	r2, [fp, #-28]		@I don't know
	strd	r2, [fp, #-12]		@I don't know
	mov	r2, #0			@I don't know
	mov	r3, #0			@I don't know
	strd	r2, [fp, #-20]		@I don't know
	mov	r2, #0			@I don't know
	mov	r3, #0			@I don't know
	strd	r2, [fp, #-20]		@I don't know
	b	.L2			@I don't know
.L3:					@I don't know
	ldrd	r2, [fp, #-12]		@I don't know
	ldrd	r0, [fp, #-20]		@I don't know
	eor	r2, r2, r0		@I don't know
	eor	r3, r3, r1		@I don't know
	strd	r2, [fp, #-12]		@I don't know
	ldrd	r2, [fp, #-20]		@I don't know
	adds	r2, r2, #1		@I don't know
	adc	r3, r3, #0		@I don't know
	strd	r2, [fp, #-20]		@I don't know
.L2:					@I don't know
	ldrd	r0, [fp, #-20]		@I don't know
	ldrd	r2, [fp, #-28]		@I don't know
	cmp	r0, r2			@I don't know
	sbcs	r3, r1, r3		@I don't know
	blt	.L3			@I don't know
	ldrd	r2, [fp, #-28]		@I don't know
	mov	r0, r2			@I don't know
	mov	r1, r3			@I don't know
	sub	sp, fp, #0		@I don't know
	@ sp needed			@I don't know
	ldr	fp, [sp], #4		@I don't know
	bx	lr			@I don't know
	.size	my_strange_function, .-my_strange_function	@I don't know
	.section	.rodata					@I don't know
	.align	2						@I don't know
.LC0:								@I don't know
	.ascii	"result: %llx\012\000"				@I don't know
	.text							@I don't know
	.align	2					@I don't know
	.global	intmain					@I don't know
	.type	intmain, %function			@I don't know
intmain:						@I don't know
	@ args = 0, pretend = 0, frame = 8		@I don't know
	@ frame_needed = 1, uses_anonymous_args = 0	@I don't know
	stmfd	sp!, {fp, lr}		@I don't know
	add	fp, sp, #4		@I don't know
	sub	sp, sp, #8		@I don't know
	str	r0, [fp, #-8]		@I don't know
	str	r1, [fp, #-12]		@I don't know
	ldr	r3, [fp, #-8]		@I don't know
	cmp	r3, #2			@I don't know
	beq	.L6			@I don't know
	mov	r3, #0			@I don't know
	b	.L7			@I don't know
.L6:					@I don't know
	ldr	r3, [fp, #-12]		@I don't know
	add	r3, r3, #4		@I don't know
	ldr	r3, [r3]		@I don't know
	mov	r0, r3			@I don't know
	bl	atoi			@I don't know
	mov	r3, r0			@I don't know
	mov	r2, r3			@I don't know
	mov	r3, r2, asr #31		@I don't know
	mov	r0, r2			@I don't know
	mov	r1, r3			@I don't know
	bl	my_strange_function	@I don't know
	mov	r2, r0			@I don't know
	mov	r3, r1			@I don't know
	ldr	r0, .L8			@I don't know
	bl	printf			@I don't know
	mov	r3, #1			@I don't know
.L7:					@I don't know
	mov	r0, r3			@I don't know
	sub	sp, fp, #4		@I don't know
	@ sp needed			@I don't know
	ldmfd	sp!, {fp, pc}		@I don't know
.L9:					@I don't know
	.align	2			@I don't know
.L8:					@I don't know
	.word	.LC0			@I don't know
	.size	intmain, .-intmain	@I don't know
	.ident	"GCC: (Raspbian 4.9.2-10) 4.9.2"	@I don't know
	.section	.note.GNU-stack,"",%progbits	@I don't know
