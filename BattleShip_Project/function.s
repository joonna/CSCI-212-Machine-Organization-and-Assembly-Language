	.arch armv6
	.eabi_attribute 28, 1
	.eabi_attribute 20, 1
	.eabi_attribute 21, 1
	.eabi_attribute 23, 3
	.eabi_attribute 24, 1
	.eabi_attribute 25, 1
	.eabi_attribute 26, 2
	.eabi_attribute 30, 6
	.eabi_attribute 34, 1
	.eabi_attribute 18, 4
	.file	"function.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"\012\011\011\011BATTLESHIP!!!\000"
	.align	2
.LC1:
	.ascii	"\012\011\011\011Rules of Battleship: \012\000"
	.align	2
.LC2:
	.ascii	"Players place their 'fleet' of 5 ships on their 'oc"
	.ascii	"ean', hidden from the\000"
	.align	2
.LC3:
	.ascii	"opponent's view. Taking turns, players call out the"
	.ascii	"ir 'shots' attempting to\000"
	.align	2
.LC4:
	.ascii	"get 'hits' on the opponent's ships in order to sink"
	.ascii	" them. Strategy and some\000"
	.align	2
.LC5:
	.ascii	"luck must be combined to be the first to locate and"
	.ascii	" sink all 5 opponent's\000"
	.align	2
.LC6:
	.ascii	"ships to win the game. The object of the game is to"
	.ascii	" be the first player to\000"
	.align	2
.LC7:
	.ascii	"sink all five of his opponent's ships. Each player "
	.ascii	"SECRETLY places his fleet\000"
	.align	2
.LC8:
	.ascii	"of 5 ships on his ocean grid. Ships may be placed i"
	.ascii	"n any horizontal or vertical\000"
	.align	2
.LC9:
	.ascii	"position - but NOT diagonally. You MAY NOT change t"
	.ascii	"he position of any ship.\000"
	.align	2
.LC10:
	.ascii	"To do so would be cheating!\012\000"
	.align	2
.LC11:
	.ascii	"This is a one player game where you are player1, an"
	.ascii	"d the computer is player2.\012\000"
	.align	2
.LC12:
	.ascii	"Types of Ships: \011Size:\012\000"
	.align	2
.LC13:
	.ascii	"Aircraft Carrier \0115 \012Battleship \011\0114 \012"
	.ascii	"Cruiser \011\0113 \012Submarine \011\0113 \012Destr"
	.ascii	"oyer \011\0112\012\000"
	.align	2
.LC14:
	.ascii	"Symbols: \012 c - Aircraft Carrier\012 b - Battlesh"
	.ascii	"ip\012 r - Cruiser\012 s - Submarine\012 d - Destro"
	.ascii	"yer\000"
	.align	2
.LC15:
	.ascii	"\012 ~ - Water\012 * - Hit\012 m - Miss\000"
	.text
	.align	2
	.global	welcome_screen
	.syntax unified
	.arm
	.fpu vfp
	.type	welcome_screen, %function
welcome_screen:
	@ args = 0, pretend = 0, frame = 0
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	ldr	r0, .L2
	bl	puts
	ldr	r0, .L2+4
	bl	puts
	ldr	r0, .L2+8
	bl	puts
	ldr	r0, .L2+12
	bl	puts
	ldr	r0, .L2+16
	bl	puts
	ldr	r0, .L2+20
	bl	puts
	ldr	r0, .L2+24
	bl	puts
	ldr	r0, .L2+28
	bl	puts
	ldr	r0, .L2+32
	bl	puts
	ldr	r0, .L2+36
	bl	puts
	ldr	r0, .L2+40
	bl	puts
	ldr	r0, .L2+44
	bl	puts
	ldr	r0, .L2+48
	bl	puts
	ldr	r0, .L2+52
	bl	puts
	ldr	r0, .L2+56
	bl	puts
	ldr	r0, .L2+60
	bl	puts
	nop
	pop	{fp, pc}
.L3:
	.align	2
.L2:
	.word	.LC0
	.word	.LC1
	.word	.LC2
	.word	.LC3
	.word	.LC4
	.word	.LC5
	.word	.LC6
	.word	.LC7
	.word	.LC8
	.word	.LC9
	.word	.LC10
	.word	.LC11
	.word	.LC12
	.word	.LC13
	.word	.LC14
	.word	.LC15
	.size	welcome_screen, .-welcome_screen
	.section	.rodata
	.align	2
.LC16:
	.ascii	"\012\011    0 1 2 3 4 5 6 7 8 9\000"
	.align	2
.LC17:
	.ascii	"\011 +---------------------+\012\011\000"
	.align	2
.LC18:
	.ascii	"%d | \000"
	.align	2
.LC19:
	.ascii	"%c \000"
	.align	2
.LC20:
	.ascii	"| %d\012\011\000"
	.align	2
.LC21:
	.ascii	" +---------------------+\000"
	.align	2
.LC22:
	.ascii	"\011    0 1 2 3 4 5 6 7 8 9\012\000"
	.text
	.align	2
	.global	initialize_game_board
	.syntax unified
	.arm
	.fpu vfp
	.type	initialize_game_board, %function
initialize_game_board:
	@ args = 32, pretend = 0, frame = 24
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-16]
	str	r1, [fp, #-20]
	str	r2, [fp, #-24]
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	ldr	r3, [fp, #8]
	cmp	r3, #0
	beq	.L5
	ldr	r0, .L32
	bl	puts
	ldr	r0, .L32+4
	bl	printf
.L5:
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L6
.L29:
	ldr	r3, [fp, #-8]
	cmp	r3, #8
	bgt	.L7
	ldr	r3, [fp, #8]
	cmp	r3, #0
	beq	.L7
	ldr	r1, [fp, #-8]
	ldr	r0, .L32+8
	bl	printf
.L7:
	ldr	r3, [fp, #-8]
	cmp	r3, #9
	bne	.L8
	ldr	r3, [fp, #8]
	cmp	r3, #0
	beq	.L8
	ldr	r1, [fp, #-8]
	ldr	r0, .L32+8
	bl	printf
.L8:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L9
.L28:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #99
	beq	.L10
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #98
	beq	.L10
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #114
	beq	.L10
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #115
	beq	.L10
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #100
	beq	.L10
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #42
	beq	.L10
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #109
	beq	.L10
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r2, #126
	strb	r2, [r3]
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bne	.L11
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	beq	.L12
.L11:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bne	.L13
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	bne	.L13
.L12:
	ldr	r3, [fp, #8]
	cmn	r3, #1
	beq	.L13
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r2, [fp, #32]
	strb	r2, [r3]
.L13:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bge	.L14
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	ble	.L14
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	beq	.L15
.L14:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	ble	.L16
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-24]
	cmp	r2, r3
	bge	.L16
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bne	.L16
.L15:
	ldr	r3, [fp, #8]
	cmn	r3, #1
	beq	.L16
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r2, [fp, #32]
	strb	r2, [r3]
.L16:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	bge	.L17
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	ble	.L17
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	beq	.L18
.L17:
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-20]
	cmp	r2, r3
	ble	.L10
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #-28]
	cmp	r2, r3
	bge	.L10
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #-16]
	cmp	r2, r3
	bne	.L10
.L18:
	ldr	r3, [fp, #8]
	cmn	r3, #1
	beq	.L10
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r2, [fp, #32]
	strb	r2, [r3]
.L10:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #126
	bne	.L19
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #28]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r2, #126
	strb	r2, [r3]
.L19:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #97
	bls	.L20
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #115
	bhi	.L20
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #109
	beq	.L20
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #28]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r2, #126
	strb	r2, [r3]
.L20:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #109
	bne	.L21
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #28]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r2, #109
	strb	r2, [r3]
.L21:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #42
	bne	.L22
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #28]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r2, #42
	strb	r2, [r3]
.L22:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #16]
	cmp	r2, r3
	bne	.L23
	ldr	r2, [fp, #-12]
	ldr	r3, [fp, #20]
	cmp	r2, r3
	bne	.L23
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #97
	bls	.L24
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #115
	bhi	.L24
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #28]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r2, #42
	strb	r2, [r3]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r2, #42
	strb	r2, [r3]
	ldr	r3, [fp, #24]
	ldr	r3, [r3]
	add	r2, r3, #1
	ldr	r3, [fp, #24]
	str	r2, [r3]
.L24:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #126
	bne	.L23
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #28]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r2, #109
	strb	r2, [r3]
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	mov	r2, #109
	strb	r2, [r3]
.L23:
	ldr	r3, [fp, #8]
	cmp	r3, #0
	beq	.L25
	ldr	r3, [fp, #12]
	cmp	r3, #1
	bne	.L25
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #4]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, .L32+12
	bl	printf
.L25:
	ldr	r3, [fp, #8]
	cmp	r3, #0
	beq	.L26
	ldr	r3, [fp, #12]
	cmp	r3, #2
	bne	.L26
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #28]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	mov	r1, r3
	ldr	r0, .L32+12
	bl	printf
.L26:
	ldr	r3, [fp, #-12]
	cmp	r3, #9
	bne	.L27
	ldr	r3, [fp, #8]
	cmp	r3, #0
	beq	.L27
	ldr	r1, [fp, #-8]
	ldr	r0, .L32+16
	bl	printf
.L27:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L9:
	ldr	r3, [fp, #-12]
	cmp	r3, #9
	ble	.L28
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L6:
	ldr	r3, [fp, #-8]
	cmp	r3, #9
	ble	.L29
	ldr	r3, [fp, #8]
	cmp	r3, #0
	beq	.L30
	ldr	r0, .L32+20
	bl	puts
	ldr	r0, .L32+24
	bl	puts
.L30:
	ldr	r3, [fp, #4]
	uxtb	r3, r3
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L33:
	.align	2
.L32:
	.word	.LC16
	.word	.LC17
	.word	.LC18
	.word	.LC19
	.word	.LC20
	.word	.LC21
	.word	.LC22
	.size	initialize_game_board, .-initialize_game_board
	.section	.rodata
	.align	2
.LC23:
	.ascii	"Player1 (Human) goes first. . .\012\000"
	.align	2
.LC24:
	.ascii	"Player2 (CPU) goes first. . .\012\000"
	.text
	.align	2
	.global	select_who_starts_first
	.syntax unified
	.arm
	.fpu vfp
	.type	select_who_starts_first, %function
select_who_starts_first:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-8]
	bl	rand
	mov	r2, r0
	asr	r3, r2, #31
	lsr	r3, r3, #31
	add	r2, r2, r3
	and	r2, r2, #1
	sub	r3, r2, r3
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-12]
	cmp	r3, #0
	bne	.L35
	ldr	r0, .L38
	bl	puts
	mov	r3, #1
	str	r3, [fp, #-8]
.L35:
	ldr	r3, [fp, #-12]
	cmp	r3, #1
	bne	.L36
	ldr	r0, .L38+4
	bl	puts
	mov	r3, #2
	str	r3, [fp, #-8]
.L36:
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L39:
	.align	2
.L38:
	.word	.LC23
	.word	.LC24
	.size	select_who_starts_first, .-select_who_starts_first
	.section	.rodata
	.align	2
.LC25:
	.ascii	"How would you like to deploy your ships?\0121) Manu"
	.ascii	"ally\0122) Randomly\012\000"
	.align	2
.LC26:
	.ascii	"%d\000"
	.text
	.align	2
	.global	deploy_ships
	.syntax unified
	.arm
	.fpu vfp
	.type	deploy_ships, %function
deploy_ships:
	@ args = 0, pretend = 0, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #8
	mov	r3, #0
	str	r3, [fp, #-8]
	ldr	r0, .L42
	bl	puts
	sub	r3, fp, #8
	mov	r1, r3
	ldr	r0, .L42+4
	bl	__isoc99_scanf
	ldr	r3, [fp, #-8]
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L43:
	.align	2
.L42:
	.word	.LC25
	.word	.LC26
	.size	deploy_ships, .-deploy_ships
	.section	.rodata
	.align	2
.LC27:
	.ascii	"Enter the endpoint coordinates for your Ship, size:"
	.ascii	" %d: \012\000"
	.align	2
.LC28:
	.ascii	"%d %d %d %d\000"
	.align	2
.LC29:
	.ascii	"The ship cannot be diagonal!\000"
	.align	2
.LC30:
	.ascii	"The ship does not fit those coordinates!\000"
	.align	2
.LC31:
	.ascii	"Your ships cannot overlap!\000"
	.text
	.align	2
	.global	manually_place_ships_on_board
	.syntax unified
	.arm
	.fpu vfp
	.type	manually_place_ships_on_board, %function
manually_place_ships_on_board:
	@ args = 8, pretend = 0, frame = 56
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #64
	str	r0, [fp, #-48]
	str	r1, [fp, #-52]
	str	r2, [fp, #-56]
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-36]
	mov	r3, #0
	str	r3, [fp, #-40]
.L49:
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-48]
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, [fp, #-52]
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, [fp, #-56]
	mov	r2, #0
	str	r2, [r3]
	ldr	r3, [fp, #-60]
	mov	r2, #0
	str	r2, [r3]
	ldr	r1, [fp, #4]
	ldr	r0, .L77
	bl	printf
	ldr	r3, [fp, #-56]
	str	r3, [sp]
	ldr	r3, [fp, #-60]
	ldr	r2, [fp, #-48]
	ldr	r1, [fp, #-52]
	ldr	r0, .L77+4
	bl	__isoc99_scanf
	ldr	r3, [fp, #-48]
	ldr	r2, [r3]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L45
	ldr	r3, [fp, #-52]
	ldr	r2, [r3]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L45
	ldr	r0, .L77+8
	bl	puts
.L45:
	ldr	r3, [fp, #-52]
	ldr	r2, [r3]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L46
	ldr	r3, [fp, #-48]
	ldr	r2, [r3]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	sub	r3, r2, r3
	cmp	r3, #0
	rsblt	r3, r3, #0
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L46:
	ldr	r3, [fp, #-48]
	ldr	r2, [r3]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L47
	ldr	r3, [fp, #-52]
	ldr	r2, [r3]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	sub	r3, r2, r3
	cmp	r3, #0
	rsblt	r3, r3, #0
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L47:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #4]
	cmp	r2, r3
	beq	.L48
	ldr	r0, .L77+12
	bl	puts
.L48:
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L49
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	cmp	r3, #9
	bgt	.L49
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L50
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	cmp	r3, #9
	bgt	.L49
.L50:
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L49
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	cmp	r3, #9
	bgt	.L49
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L51
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	cmp	r3, #9
	bgt	.L49
.L51:
	ldr	r3, [fp, #-48]
	ldr	r2, [r3]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	cmp	r2, r3
	beq	.L52
	ldr	r3, [fp, #-52]
	ldr	r2, [r3]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L49
.L52:
	ldr	r2, [fp, #-8]
	ldr	r3, [fp, #4]
	cmp	r2, r3
	bne	.L49
	ldr	r3, [fp, #-52]
	ldr	r2, [r3]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L53
	ldr	r3, [fp, #-48]
	ldr	r2, [r3]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	cmp	r2, r3
	ble	.L54
	ldr	r3, [fp, #4]
	cmp	r3, #2
	ble	.L55
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	str	r3, [fp, #-16]
.L55:
	ldr	r3, [fp, #4]
	cmp	r3, #3
	ble	.L56
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	add	r3, r3, #2
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	str	r3, [fp, #-24]
.L56:
	ldr	r3, [fp, #4]
	cmp	r3, #4
	ble	.L54
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	add	r3, r3, #3
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	str	r3, [fp, #-32]
.L54:
	ldr	r3, [fp, #-48]
	ldr	r2, [r3]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L53
	ldr	r3, [fp, #4]
	cmp	r3, #2
	ble	.L57
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	add	r3, r3, #1
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	str	r3, [fp, #-16]
.L57:
	ldr	r3, [fp, #4]
	cmp	r3, #3
	ble	.L58
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	add	r3, r3, #2
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	str	r3, [fp, #-24]
.L58:
	ldr	r3, [fp, #4]
	cmp	r3, #4
	ble	.L53
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	add	r3, r3, #3
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	str	r3, [fp, #-32]
.L53:
	ldr	r3, [fp, #-48]
	ldr	r2, [r3]
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	cmp	r2, r3
	bne	.L59
	ldr	r3, [fp, #-52]
	ldr	r2, [r3]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	cmp	r2, r3
	bge	.L60
	ldr	r3, [fp, #4]
	cmp	r3, #2
	ble	.L61
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L61:
	ldr	r3, [fp, #4]
	cmp	r3, #3
	ble	.L62
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	add	r3, r3, #2
	str	r3, [fp, #-24]
.L62:
	ldr	r3, [fp, #4]
	cmp	r3, #4
	ble	.L60
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	add	r3, r3, #3
	str	r3, [fp, #-32]
.L60:
	ldr	r3, [fp, #-52]
	ldr	r2, [r3]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	cmp	r2, r3
	ble	.L59
	ldr	r3, [fp, #4]
	cmp	r3, #2
	ble	.L63
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	str	r3, [fp, #-12]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L63:
	ldr	r3, [fp, #4]
	cmp	r3, #3
	ble	.L64
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	add	r3, r3, #2
	str	r3, [fp, #-24]
.L64:
	ldr	r3, [fp, #4]
	cmp	r3, #4
	ble	.L59
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	str	r3, [fp, #-28]
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	add	r3, r3, #3
	str	r3, [fp, #-32]
.L59:
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #97
	bls	.L65
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #121
	bls	.L66
.L65:
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #97
	bls	.L67
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #121
	bls	.L66
.L67:
	ldr	r2, [fp, #-12]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #97
	bls	.L68
	ldr	r2, [fp, #-12]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #121
	bhi	.L68
	ldr	r3, [fp, #4]
	cmp	r3, #2
	bgt	.L66
.L68:
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #97
	bls	.L69
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #121
	bhi	.L69
	ldr	r3, [fp, #4]
	cmp	r3, #3
	bgt	.L66
.L69:
	ldr	r2, [fp, #-28]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #97
	bls	.L70
	ldr	r2, [fp, #-28]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #121
	bhi	.L70
	ldr	r3, [fp, #4]
	cmp	r3, #4
	ble	.L70
.L66:
	ldr	r0, .L77+16
	bl	puts
.L70:
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #97
	bls	.L71
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #121
	bls	.L49
.L71:
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #97
	bls	.L72
	ldr	r3, [fp, #-56]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-60]
	ldr	r3, [r3]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #121
	bls	.L49
.L72:
	ldr	r2, [fp, #-12]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #97
	bls	.L73
	ldr	r2, [fp, #-12]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-16]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #121
	bhi	.L73
	ldr	r3, [fp, #4]
	cmp	r3, #2
	bgt	.L49
.L73:
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #97
	bls	.L74
	ldr	r2, [fp, #-20]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-24]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #121
	bhi	.L74
	ldr	r3, [fp, #4]
	cmp	r3, #3
	bgt	.L49
.L74:
	ldr	r2, [fp, #-28]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #97
	bls	.L76
	ldr	r2, [fp, #-28]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-32]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #121
	bhi	.L76
	ldr	r3, [fp, #4]
	cmp	r3, #4
	bgt	.L49
.L76:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L78:
	.align	2
.L77:
	.word	.LC27
	.word	.LC28
	.word	.LC29
	.word	.LC30
	.word	.LC31
	.size	manually_place_ships_on_board, .-manually_place_ships_on_board
	.align	2
	.global	randomly_place_ships_on_board
	.syntax unified
	.arm
	.fpu vfp
	.type	randomly_place_ships_on_board, %function
randomly_place_ships_on_board:
	@ args = 8, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #48
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	str	r2, [fp, #-48]
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-28]
.L86:
	bl	rand
	mov	r1, r0
	ldr	r3, .L93
	smull	r2, r3, r3, r1
	asr	r2, r3, #2
	asr	r3, r1, #31
	sub	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	sub	r2, r1, r3
	ldr	r3, [fp, #-40]
	str	r2, [r3]
	bl	rand
	mov	r1, r0
	ldr	r3, .L93
	smull	r2, r3, r3, r1
	asr	r2, r3, #2
	asr	r3, r1, #31
	sub	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	sub	r2, r1, r3
	ldr	r3, [fp, #-44]
	str	r2, [r3]
	bl	rand
	mov	r2, r0
	asr	r3, r2, #31
	lsr	r3, r3, #31
	add	r2, r2, r3
	and	r2, r2, #1
	sub	r3, r2, r3
	str	r3, [fp, #-32]
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L80
	ldr	r3, [fp, #-40]
	ldr	r2, [r3]
	ldr	r3, [fp, #4]
	sub	r3, r2, r3
	add	r2, r3, #1
	ldr	r3, [fp, #-48]
	str	r2, [r3]
	ldr	r3, [fp, #-44]
	ldr	r2, [r3]
	ldr	r3, [fp, #-52]
	str	r2, [r3]
	ldr	r3, [fp, #4]
	cmp	r3, #2
	ble	.L81
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	add	r3, r3, #1
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-44]
	ldr	r3, [r3]
	str	r3, [fp, #-12]
.L81:
	ldr	r3, [fp, #4]
	cmp	r3, #3
	ble	.L82
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	add	r3, r3, #2
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-44]
	ldr	r3, [r3]
	str	r3, [fp, #-20]
.L82:
	ldr	r3, [fp, #4]
	cmp	r3, #4
	ble	.L80
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	add	r3, r3, #3
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-44]
	ldr	r3, [r3]
	str	r3, [fp, #-28]
.L80:
	ldr	r3, [fp, #-32]
	cmp	r3, #1
	bne	.L83
	ldr	r3, [fp, #-44]
	ldr	r2, [r3]
	ldr	r3, [fp, #4]
	sub	r3, r2, r3
	add	r2, r3, #1
	ldr	r3, [fp, #-52]
	str	r2, [r3]
	ldr	r3, [fp, #-40]
	ldr	r2, [r3]
	ldr	r3, [fp, #-48]
	str	r2, [r3]
	ldr	r3, [fp, #4]
	cmp	r3, #2
	ble	.L84
	ldr	r3, [fp, #-40]
	ldr	r3, [r3]
	str	r3, [fp, #-8]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L84:
	ldr	r3, [fp, #4]
	cmp	r3, #3
	ble	.L85
	ldr	r3, [fp, #-40]
	ldr	r3, [r3]
	str	r3, [fp, #-16]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	add	r3, r3, #2
	str	r3, [fp, #-20]
.L85:
	ldr	r3, [fp, #4]
	cmp	r3, #4
	ble	.L83
	ldr	r3, [fp, #-40]
	ldr	r3, [r3]
	str	r3, [fp, #-24]
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	add	r3, r3, #3
	str	r3, [fp, #-28]
.L83:
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L86
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	cmp	r3, #0
	ble	.L86
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	cmp	r3, #9
	bgt	.L86
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	cmp	r3, #9
	bgt	.L86
	ldr	r3, [fp, #-40]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-44]
	ldr	r3, [r3]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #97
	bls	.L87
	ldr	r3, [fp, #-40]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-44]
	ldr	r3, [r3]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #121
	bls	.L86
.L87:
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #97
	bls	.L88
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #121
	bls	.L86
.L88:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #97
	bls	.L89
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #121
	bls	.L86
.L89:
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #97
	bls	.L90
	ldr	r2, [fp, #-16]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-20]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #121
	bls	.L86
.L90:
	ldr	r2, [fp, #-24]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #97
	bls	.L92
	ldr	r2, [fp, #-24]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #8]
	add	r2, r3, r2
	ldr	r3, [fp, #-28]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #121
	bls	.L86
.L92:
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L94:
	.align	2
.L93:
	.word	1717986919
	.size	randomly_place_ships_on_board, .-randomly_place_ships_on_board
	.section	.rodata
	.align	2
.LC32:
	.ascii	"Enter target coordinates: \000"
	.align	2
.LC33:
	.ascii	"%d %d\000"
	.align	2
.LC34:
	.ascii	"Your target coordinates must be from 0-9!\000"
	.align	2
.LC35:
	.ascii	"You have already shot there! \000"
	.text
	.align	2
	.global	shoot_manual
	.syntax unified
	.arm
	.fpu vfp
	.type	shoot_manual, %function
shoot_manual:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
.L98:
	ldr	r0, .L101
	bl	puts
	ldr	r2, [fp, #-8]
	ldr	r1, [fp, #-12]
	ldr	r0, .L101+4
	bl	__isoc99_scanf
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	cmp	r3, #9
	bgt	.L96
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L96
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	cmp	r3, #9
	bgt	.L96
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	cmp	r3, #0
	bge	.L97
.L96:
	ldr	r0, .L101+8
	bl	puts
.L97:
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	cmp	r3, #9
	bgt	.L98
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L98
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	cmp	r3, #9
	bgt	.L98
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	cmp	r3, #0
	blt	.L98
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #42
	beq	.L99
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #109
	bne	.L100
.L99:
	ldr	r0, .L101+12
	bl	puts
.L100:
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #42
	beq	.L98
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #109
	beq	.L98
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L102:
	.align	2
.L101:
	.word	.LC32
	.word	.LC33
	.word	.LC34
	.word	.LC35
	.size	shoot_manual, .-shoot_manual
	.align	2
	.global	shoot_random
	.syntax unified
	.arm
	.fpu vfp
	.type	shoot_random, %function
shoot_random:
	@ args = 0, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #16
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
.L104:
	bl	rand
	mov	r1, r0
	ldr	r3, .L105
	smull	r2, r3, r3, r1
	asr	r2, r3, #2
	asr	r3, r1, #31
	sub	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	sub	r2, r1, r3
	ldr	r3, [fp, #-8]
	str	r2, [r3]
	bl	rand
	mov	r1, r0
	ldr	r3, .L105
	smull	r2, r3, r3, r1
	asr	r2, r3, #2
	asr	r3, r1, #31
	sub	r2, r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	sub	r2, r1, r3
	ldr	r3, [fp, #-12]
	str	r2, [r3]
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #42
	beq	.L104
	ldr	r3, [fp, #-8]
	ldr	r3, [r3]
	mov	r2, r3
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-16]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	ldr	r3, [r3]
	ldrb	r3, [r2, r3]	@ zero_extendqisi2
	cmp	r3, #109
	beq	.L104
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L106:
	.align	2
.L105:
	.word	1717986919
	.size	shoot_random, .-shoot_random
	.section	.rodata
	.align	2
.LC36:
	.ascii	"You sunk my Aircraft Carrier!\000"
	.align	2
.LC37:
	.ascii	"You sunk my Battleship!\000"
	.align	2
.LC38:
	.ascii	"You sunk my Cruiser!\000"
	.align	2
.LC39:
	.ascii	"You sunk my Submarine!\000"
	.align	2
.LC40:
	.ascii	"You sunk my Destroyer!\000"
	.text
	.align	2
	.global	check_ship
	.syntax unified
	.arm
	.fpu vfp
	.type	check_ship, %function
check_ship:
	@ args = 8, pretend = 0, frame = 48
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #48
	str	r0, [fp, #-40]
	str	r1, [fp, #-44]
	str	r2, [fp, #-48]
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-8]
	mov	r3, #0
	str	r3, [fp, #-12]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-32]
	mov	r3, #0
	str	r3, [fp, #-8]
	b	.L108
.L116:
	mov	r3, #0
	str	r3, [fp, #-12]
	b	.L109
.L115:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #99
	bne	.L110
	ldr	r3, [fp, #-44]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L110
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
.L110:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #98
	bne	.L111
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L111
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
.L111:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #114
	bne	.L112
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L112
	ldr	r3, [fp, #-24]
	add	r3, r3, #1
	str	r3, [fp, #-24]
.L112:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #115
	bne	.L113
	ldr	r3, [fp, #4]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L113
	ldr	r3, [fp, #-28]
	add	r3, r3, #1
	str	r3, [fp, #-28]
.L113:
	ldr	r2, [fp, #-8]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	mov	r2, r3
	ldr	r3, [fp, #-40]
	add	r2, r3, r2
	ldr	r3, [fp, #-12]
	add	r3, r2, r3
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #100
	bne	.L114
	ldr	r3, [fp, #8]
	ldr	r3, [r3]
	cmp	r3, #0
	bne	.L114
	ldr	r3, [fp, #-32]
	add	r3, r3, #1
	str	r3, [fp, #-32]
.L114:
	ldr	r3, [fp, #-12]
	add	r3, r3, #1
	str	r3, [fp, #-12]
.L109:
	ldr	r3, [fp, #-12]
	cmp	r3, #9
	ble	.L115
	ldr	r3, [fp, #-8]
	add	r3, r3, #1
	str	r3, [fp, #-8]
.L108:
	ldr	r3, [fp, #-8]
	cmp	r3, #9
	ble	.L116
	ldr	r3, [fp, #-16]
	cmp	r3, #0
	bne	.L117
	ldr	r3, [fp, #-44]
	ldr	r3, [r3]
	cmn	r3, #1
	beq	.L117
	ldr	r0, .L122
	bl	puts
	ldr	r3, [fp, #-44]
	mov	r2, #1
	str	r2, [r3]
.L117:
	ldr	r3, [fp, #-20]
	cmp	r3, #0
	bne	.L118
	ldr	r3, [fp, #-48]
	ldr	r3, [r3]
	cmn	r3, #1
	beq	.L118
	ldr	r0, .L122+4
	bl	puts
	ldr	r3, [fp, #-48]
	mov	r2, #1
	str	r2, [r3]
.L118:
	ldr	r3, [fp, #-24]
	cmp	r3, #0
	bne	.L119
	ldr	r3, [fp, #-52]
	ldr	r3, [r3]
	cmn	r3, #1
	beq	.L119
	ldr	r0, .L122+8
	bl	puts
	ldr	r3, [fp, #-52]
	mov	r2, #1
	str	r2, [r3]
.L119:
	ldr	r3, [fp, #-28]
	cmp	r3, #0
	bne	.L120
	ldr	r3, [fp, #4]
	ldr	r3, [r3]
	cmn	r3, #1
	beq	.L120
	ldr	r0, .L122+12
	bl	puts
	ldr	r3, [fp, #4]
	mov	r2, #1
	str	r2, [r3]
.L120:
	ldr	r3, [fp, #-32]
	cmp	r3, #0
	bne	.L121
	ldr	r3, [fp, #8]
	ldr	r3, [r3]
	cmn	r3, #1
	beq	.L121
	ldr	r0, .L122+16
	bl	puts
	ldr	r3, [fp, #8]
	mov	r2, #1
	str	r2, [r3]
.L121:
	nop
	mov	r0, r3
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L123:
	.align	2
.L122:
	.word	.LC36
	.word	.LC37
	.word	.LC38
	.word	.LC39
	.word	.LC40
	.size	check_ship, .-check_ship
	.section	.rodata
	.align	2
.LC41:
	.ascii	"Player%d: (%d,%d)\011\000"
	.align	2
.LC42:
	.ascii	"Hit!\012\000"
	.align	2
.LC43:
	.ascii	"Miss...\012\000"
	.align	2
.LC44:
	.ascii	"Sunk Aircraft Carrier!\012\000"
	.align	2
.LC45:
	.ascii	"Sunk Battleship!\012\000"
	.align	2
.LC46:
	.ascii	"Sunk Cruiser!\012\000"
	.align	2
.LC47:
	.ascii	"Sunk Submarine!\012\000"
	.align	2
.LC48:
	.ascii	"Sunk Destroyer!\012\000"
	.text
	.align	2
	.global	output_move
	.syntax unified
	.arm
	.fpu vfp
	.type	output_move, %function
output_move:
	@ args = 24, pretend = 0, frame = 16
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-8]
	str	r1, [fp, #-12]
	str	r2, [fp, #-16]
	str	r3, [fp, #-20]
	ldr	r3, [fp, #-12]
	cmn	r3, #1
	beq	.L125
	ldr	r3, [fp, #-16]
	cmn	r3, #1
	beq	.L125
	ldr	r3, [fp, #-16]
	str	r3, [sp]
	ldr	r3, [fp, #-12]
	ldr	r2, [fp, #-20]
	ldr	r1, .L133
	ldr	r0, [fp, #-8]
	bl	fprintf
.L125:
	ldr	r3, [fp, #4]
	cmp	r3, #1
	bne	.L126
	ldr	r3, [fp, #-8]
	mov	r2, #5
	mov	r1, #1
	ldr	r0, .L133+4
	bl	fwrite
.L126:
	ldr	r3, [fp, #4]
	cmp	r3, #0
	bne	.L127
	ldr	r3, [fp, #-8]
	mov	r2, #8
	mov	r1, #1
	ldr	r0, .L133+8
	bl	fwrite
.L127:
	ldr	r3, [fp, #8]
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L128
	ldr	r3, [fp, #-8]
	mov	r2, #23
	mov	r1, #1
	ldr	r0, .L133+12
	bl	fwrite
	ldr	r3, [fp, #8]
	mvn	r2, #0
	str	r2, [r3]
.L128:
	ldr	r3, [fp, #12]
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L129
	ldr	r3, [fp, #-8]
	mov	r2, #17
	mov	r1, #1
	ldr	r0, .L133+16
	bl	fwrite
	ldr	r3, [fp, #12]
	mvn	r2, #0
	str	r2, [r3]
.L129:
	ldr	r3, [fp, #16]
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L130
	ldr	r3, [fp, #-8]
	mov	r2, #14
	mov	r1, #1
	ldr	r0, .L133+20
	bl	fwrite
	ldr	r3, [fp, #16]
	mvn	r2, #0
	str	r2, [r3]
.L130:
	ldr	r3, [fp, #20]
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L131
	ldr	r3, [fp, #-8]
	mov	r2, #16
	mov	r1, #1
	ldr	r0, .L133+24
	bl	fwrite
	ldr	r3, [fp, #20]
	mvn	r2, #0
	str	r2, [r3]
.L131:
	ldr	r3, [fp, #24]
	ldr	r3, [r3]
	cmp	r3, #1
	bne	.L132
	ldr	r3, [fp, #-8]
	mov	r2, #16
	mov	r1, #1
	ldr	r0, .L133+28
	bl	fwrite
	ldr	r3, [fp, #24]
	mvn	r2, #0
	str	r2, [r3]
.L132:
	ldr	r1, [fp, #-8]
	mov	r0, #10
	bl	fputc
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, pc}
.L134:
	.align	2
.L133:
	.word	.LC41
	.word	.LC42
	.word	.LC43
	.word	.LC44
	.word	.LC45
	.word	.LC46
	.word	.LC47
	.word	.LC48
	.size	output_move, .-output_move
	.section	.rodata
	.align	2
.LC49:
	.ascii	"\012Player%d Wins!!\012\000"
	.align	2
.LC50:
	.ascii	"\012Player%d Losses... \012\000"
	.align	2
.LC51:
	.ascii	"\012***Player%d Stats***\012Hits: %d\012Misses: %d\012"
	.ascii	"Total Shots: %d\012Accuracy: %.2lf%%\012\012\000"
	.text
	.align	2
	.global	output_stats
	.syntax unified
	.arm
	.fpu vfp
	.type	output_stats, %function
output_stats:
	@ args = 32, pretend = 8, frame = 8
	@ frame_needed = 1, uses_anonymous_args = 0
	sub	sp, sp, #8
	push	{fp, lr}
	add	fp, sp, #4
	sub	sp, sp, #24
	str	r0, [fp, #-8]
	add	r1, fp, #4
	stm	r1, {r2, r3}
	ldr	r3, [fp, #28]
	cmp	r3, #1
	bne	.L136
	ldr	r3, [fp, #4]
	mov	r2, r3
	ldr	r1, .L138
	ldr	r0, [fp, #-8]
	bl	fprintf
.L136:
	ldr	r3, [fp, #28]
	cmp	r3, #0
	bne	.L137
	ldr	r3, [fp, #4]
	mov	r2, r3
	ldr	r1, .L138+4
	ldr	r0, [fp, #-8]
	bl	fprintf
.L137:
	ldr	ip, [fp, #4]
	ldr	lr, [fp, #8]
	ldr	r1, [fp, #12]
	ldr	r0, [fp, #16]
	ldrd	r2, [fp, #20]
	strd	r2, [sp, #8]
	str	r0, [sp, #4]
	str	r1, [sp]
	mov	r3, lr
	mov	r2, ip
	ldr	r1, .L138+8
	ldr	r0, [fp, #-8]
	bl	fprintf
	nop
	sub	sp, fp, #4
	@ sp needed
	pop	{fp, lr}
	add	sp, sp, #8
	bx	lr
.L139:
	.align	2
.L138:
	.word	.LC49
	.word	.LC50
	.word	.LC51
	.size	output_stats, .-output_stats
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
