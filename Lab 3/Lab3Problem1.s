.cpu cortex-a53
.fpu neon-fp-armv8

.data

prompt: .asciz "Overflow happened at %dth term\n"

.text
.align 2
.global main
.type main, %function

main:
stmfd	sp!, {fp, lr}
add	fp, sp, #4
sub	sp, sp, #16
mov	r3, #0
str	r3, [fp, #-8]
mov	r3, #0
str	r3, [fp, #-12]
mov	r3, #1
str	r3, [fp, #-16]
mov	r3, #0
str	r3, [fp, #-20]
b	donewhile

while:
ldr	r2, [fp, #-12]
ldr	r3, [fp, #-16]
add	r3, r2, r3
str	r3, [fp, #-20]
ldr	r3, [fp, #-16]
str	r3, [fp, #-12]
ldr	r3, [fp, #-20]
str	r3, [fp, #-16]
ldr	r3, [fp, #-8]
add	r3, r3, #1
str	r3, [fp, #-8]

donewhile:
ldr	r3, [fp, #-20]
cmp	r3, #0
bge	while
ldr	r0, =prompt
ldr	r1, [fp, #-8]
bl	printf
mov	r3, #0
mov	r0, r3
sub	sp, fp, #4
ldmfd	sp!, {fp, pc}
