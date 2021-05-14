.cpu cortex-a53
.fpu neon-fp-armv8

.data

.text
.align 2
.global checkPrimeNumber
.type checkPrimeNumber, %function

checkPrimeNumber:
sub sp, sp, #4
str lr, [sp]
sub sp, sp, #4
str fp, [sp]
add fp, sp, #4

@ r4 = int n
@ r5 = int j = 2
@ r6 = int flag = 1
@ r9 = constant value 2

mov r4, r0
mov r5, #2
mov r6, #1
mov r9, #2

loop:
@ r7 = n/2
udiv r7, r4, r9

cmp r5, r7
bgt done_loop

mov r0, r4
mov r1, r5
bl modulo

@ r8 = n%j
mov r8, r0

add r5, r5, #1

cmp r8, #0
bne loop

mov r6, #0
b done_loop

done_loop:

mov r0, r6

sub sp, fp, #4
ldr fp, [sp]
add sp, sp, #4
ldr lr, [sp]
add sp, sp, #4
bx lr

 