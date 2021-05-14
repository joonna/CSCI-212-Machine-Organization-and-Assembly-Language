.cpu cortex-a53
.fpu neon-fp-armv8

.data

prompt1: .asciz "Enter Fibonacci term:"
inp: .asciz "%d"
prompt2: .asciz "%d Fibonacci number"
out: .asciz "%d"

.text
.align 2
.global main
.global fib
.type main, %function

main:

stmfd	sp!, {fp, lr}
add	fp, sp, #4
sub	sp, sp, #8
ldr	r0, =prompt1
bl	printf
sub	r3, fp, #8
ldr	r0, =inp
mov	r1, r3
bl	scanf
ldr	r3, [fp, #-8]
ldr	r0, =prompt2
mov	r1, r3
bl	printf
ldr	r3, [fp, #-8]
mov	r0, r3
bl	fib
mov	r3, r0
ldr	r0, =out
mov	r1, r3
bl	printf
mov	r3, #0
mov	r0, r3
sub	sp, fp, #4
@ sp needed
ldmfd	sp!, {fp, pc}



fib:

stmfd	sp!, {r4, fp, lr}
add	fp, sp, #8
sub	sp, sp, #12
str	r0, [fp, #-16]
ldr	r3, [fp, #-16]
cmp	r3, #1
beq	loop1
ldr	r3, [fp, #-16]
cmp	r3, #0
bne	loop2

loop1:

ldr	r3, [fp, #-16]
b	loop3

loop2:

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

loop3:

mov	r0, r3
sub	sp, fp, #8
@ sp needed
ldmfd	sp!, {r4, fp, pc}