.cpu cortex-a53
.fpu neon-fp-armv8

.data

prompt: .asciz "Enter an integer: "
inp: .asciz "%d\000"
wronginp: .asciz "error! input is negative and cannot be calculated.\000"
foutp: .asciz "Factorial of %d = %d\000"
overflow: .asciz "Overflow occurred\000"

.text
.align 2
.global main
.type main, %function

main:
stmfd	sp!, {fp, lr}
add	fp, sp, #4
sub	sp, sp, #16
mov	r3, #1
str	r3, [fp, #-12]
ldr	r0, =prompt
bl	printf
sub	r3, fp, #16
ldr	r0, =inp
mov	r1, r3
bl	scanf
ldr	r3, [fp, #-16]
cmp	r3, #0
bge	if
ldr	r0, =wronginp
bl	printf
b	end

if:
mov	r3, #1
str	r3, [fp, #-8]
b	forloop

fact:
ldr	r3, [fp, #-12]
ldr	r2, [fp, #-8]
mul	r3, r2, r3
str	r3, [fp, #-12]
ldr	r3, [fp, #-8]
add	r3, r3, #1
str	r3, [fp, #-8]

forloop:
ldr	r3, [fp, #-16]
ldr	r2, [fp, #-8]
cmp	r2, r3
ble	fact
ldr	r3, [fp, #-12]
cmp	r3, #65280 @65280 is the 16-bit binary max-value, anything beyond is overflow
bge	else
ldr	r3, [fp, #-16]
ldr	r0, =foutp
mov	r1, r3
ldr	r2, [fp, #-12]
bl	printf
b	return

else:
ldr	r0, =overflow
bl	printf

return:
mov	r3, #0

end:
mov	r0, r3
sub	sp, fp, #4
ldmfd	sp!, {fp, pc}
