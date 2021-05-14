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
@ r7 = int j = 2
@ r8 = int flag = 1
@ r9 = constant value 2

mov r4, r0
mov r7, #2
mov r8, #1
mov r9, #2

loop:
@ r10 = n/2
udiv r10, r4, r9

cmp r7, r10
bgt done_loop

mov r0, r4
mov r1, r7
bl modulo

@ r2 = n%j
mov r2, r0

add r7, r7, #1

cmp r2, #0
bne loop

mov r8, #0
b done_loop

done_loop:

mov r0, r8

sub sp, fp, #4
ldr fp, [sp]
add sp, sp, #4
ldr lr, [sp]
add sp, sp, #4
bx lr 