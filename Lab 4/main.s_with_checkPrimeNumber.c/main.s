.cpu cortex-a53
.fpu neon-fp-armv8

.data
prompt1: .asciz "Enter two positive integers: "
input: .asciz "%d"
prompt2: .asciz "Prime numbers between %d and %d are: "
prompt3: .asciz "%d "

.text
.align 2
.global main
.type main, %function

main:

push {fp, lr}
add fp, sp, #4

ldr r0, =prompt1
bl printf

sub sp, sp, #4
ldr r0, =input
mov r1, sp
bl scanf

ldr r4, [sp] @ input #1 r4

ldr r0, =input
mov r1, sp
bl scanf

ldr r5, [sp] @ input #2 r5

add sp, sp, #4

ldr r0, =prompt2
mov r1, r4
mov r2, r5
bl printf

add r6, r4, #1

forloop:

@push {r6}

cmp r6, r5
bge outloop

mov r0, r6
bl checkPrimeNumber

mov r7, r0

cmp r7, #1
bne skip

ldr r0, =prompt3
mov r1, r6
bl printf

skip:

add r6, r6, #1

b forloop

outloop:

mov r0, #0
sub sp, fp, #4
pop {fp, pc}



