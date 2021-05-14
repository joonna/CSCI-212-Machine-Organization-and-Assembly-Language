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
	.file	"main.c"
	.section	.rodata
	.align	2
.LC0:
	.ascii	"w\000"
	.align	2
.LC1:
	.ascii	"Battleship.log\000"
	.align	2
.LC2:
	.ascii	"Pause\000"
	.align	2
.LC3:
	.ascii	"cls\000"
	.align	2
.LC4:
	.ascii	"\011 **** Enemy's Board ****\000"
	.align	2
.LC5:
	.ascii	"\012\011   **** Your Board ****\000"
	.align	2
.LC6:
	.ascii	"Hits: %d\011Shots: %d\012\000"
	.align	2
.LC7:
	.ascii	"Hits: %d\011Shots: %d   Target(%d,%d)\000"
	.align	2
.LC8:
	.ascii	"\011Hit!\000"
	.align	2
.LC9:
	.ascii	"\011Miss...\000"
	.align	2
.LC10:
	.ascii	"Hits: %d\011Shots: %d   Target: (%d,%d)\000"
	.align	2
.LC11:
	.ascii	"Hits: %d\011Score: %d\012\000"
	.align	2
.LC12:
	.ascii	"\012\011 **** Your Board ****\000"
	.align	2
.LC13:
	.ascii	"\012Player1 Wins!!!\012\000"
	.align	2
.LC14:
	.ascii	"\012Player2 Wins!!!\012\000"
	.align	2
.LC15:
	.ascii	"***Player1 Stats***\012Hits: %d\012Misses: %d\012Sh"
	.ascii	"ots: %d\012Accuracy: %.2lf%%\012\012\000"
	.align	2
.LC16:
	.ascii	"***Player2 Stats***\012Hits: %d\012Misses: %d\012Sh"
	.ascii	"ots: %d\012Accuracy: %.2lf%%\012\012\000"
	.text
	.align	2
	.global	main
	.syntax unified
	.arm
	.fpu vfp
	.type	main, %function
main:
	@ args = 0, pretend = 0, frame = 536
	@ frame_needed = 1, uses_anonymous_args = 0
	push	{r4, fp, lr}
	add	fp, sp, #8
	sub	sp, sp, #572
	mov	r3, #0
	str	r3, [fp, #-28]
	mov	r3, #0
	str	r3, [fp, #-132]
	mov	r3, #0
	str	r3, [fp, #-136]
	mov	r3, #0
	str	r3, [fp, #-140]
	mov	r3, #0
	str	r3, [fp, #-144]
	mov	r3, #0
	str	r3, [fp, #-32]
	mov	r3, #5
	str	r3, [fp, #-36]
	mov	r3, #4
	str	r3, [fp, #-40]
	mov	r3, #3
	str	r3, [fp, #-44]
	mov	r3, #3
	str	r3, [fp, #-48]
	mov	r3, #2
	str	r3, [fp, #-52]
	mov	r3, #0
	str	r3, [fp, #-56]
	mov	r3, #0
	str	r3, [fp, #-60]
	mov	r3, #0
	str	r3, [fp, #-16]
	mov	r3, #0
	str	r3, [fp, #-20]
	mov	r3, #0
	str	r3, [fp, #-64]
	mov	r3, #0
	str	r3, [fp, #-68]
	mov	r3, #0
	str	r3, [fp, #-148]
	mov	r3, #0
	str	r3, [fp, #-152]
	mvn	r3, #0
	str	r3, [fp, #-156]
	mvn	r3, #0
	str	r3, [fp, #-160]
	mov	r3, #0
	str	r3, [fp, #-164]
	mov	r3, #0
	str	r3, [fp, #-168]
	mov	r3, #0
	str	r3, [fp, #-172]
	mov	r3, #0
	str	r3, [fp, #-176]
	mov	r3, #0
	str	r3, [fp, #-180]
	mov	r3, #0
	str	r3, [fp, #-72]
	mov	r3, #0
	str	r3, [fp, #-76]
	mov	r3, #0
	str	r3, [fp, #-24]
	mov	r3, #0
	str	r3, [fp, #-80]
	mov	r3, #0
	str	r3, [fp, #-84]
	mov	r3, #0
	str	r3, [fp, #-88]
	mov	r3, #0
	str	r3, [fp, #-92]
	mov	r3, #0
	str	r3, [fp, #-96]
	mov	r3, #0
	str	r3, [fp, #-100]
	mov	r3, #99
	strb	r3, [fp, #-101]
	mov	r3, #98
	strb	r3, [fp, #-102]
	mov	r3, #114
	strb	r3, [fp, #-103]
	mov	r3, #115
	strb	r3, [fp, #-104]
	mov	r3, #100
	strb	r3, [fp, #-105]
	mov	r3, #0
	strb	r3, [fp, #-106]
	mov	r3, #0
	strb	r3, [fp, #-107]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-116]
	mov	r2, #0
	mov	r3, #0
	strd	r2, [fp, #-124]
	mov	r3, #0
	str	r3, [fp, #-128]
	mov	r0, #0
	bl	time
	mov	r3, r0
	mov	r0, r3
	bl	srand
	ldr	r1, .L25
	ldr	r0, .L25+4
	bl	fopen
	str	r0, [fp, #-128]
	bl	welcome_screen
	ldr	r0, .L25+44
	bl	system
	ldr	r0, .L25+48
	bl	system
	bl	deploy_ships
	str	r0, [fp, #-32]
	ldr	r0, .L25+20
	bl	puts
	sub	ip, fp, #144
	sub	r2, fp, #140
	sub	r1, fp, #136
	sub	r0, fp, #132
	sub	r3, fp, #444
	str	r3, [sp, #4]
	ldr	r3, [fp, #-36]
	str	r3, [sp]
	mov	r3, ip
	bl	randomly_place_ships_on_board
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-101]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #152
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #2
	str	r3, [sp, #8]
	mov	r3, #0
	str	r3, [sp, #4]
	sub	r3, fp, #444
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	mov	r3, r0
	strb	r3, [fp, #-334]
	sub	ip, fp, #144
	sub	r2, fp, #140
	sub	r1, fp, #136
	sub	r0, fp, #132
	sub	r3, fp, #444
	str	r3, [sp, #4]
	ldr	r3, [fp, #-40]
	str	r3, [sp]
	mov	r3, ip
	bl	randomly_place_ships_on_board
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-102]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #152
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #2
	str	r3, [sp, #8]
	mov	r3, #0
	str	r3, [sp, #4]
	sub	r3, fp, #444
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	mov	r3, r0
	strb	r3, [fp, #-334]
	sub	ip, fp, #144
	sub	r2, fp, #140
	sub	r1, fp, #136
	sub	r0, fp, #132
	sub	r3, fp, #444
	str	r3, [sp, #4]
	ldr	r3, [fp, #-44]
	str	r3, [sp]
	mov	r3, ip
	bl	randomly_place_ships_on_board
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-103]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #152
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #2
	str	r3, [sp, #8]
	mov	r3, #0
	str	r3, [sp, #4]
	sub	r3, fp, #444
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	mov	r3, r0
	strb	r3, [fp, #-334]
	sub	ip, fp, #144
	sub	r2, fp, #140
	sub	r1, fp, #136
	sub	r0, fp, #132
	sub	r3, fp, #444
	str	r3, [sp, #4]
	ldr	r3, [fp, #-48]
	str	r3, [sp]
	mov	r3, ip
	bl	randomly_place_ships_on_board
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-104]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #152
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #2
	str	r3, [sp, #8]
	mov	r3, #0
	str	r3, [sp, #4]
	sub	r3, fp, #444
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	mov	r3, r0
	strb	r3, [fp, #-334]
	sub	ip, fp, #144
	sub	r2, fp, #140
	sub	r1, fp, #136
	sub	r0, fp, #132
	sub	r3, fp, #444
	str	r3, [sp, #4]
	ldr	r3, [fp, #-52]
	str	r3, [sp]
	mov	r3, ip
	bl	randomly_place_ships_on_board
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-105]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #152
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #2
	str	r3, [sp, #8]
	mov	r3, #1
	str	r3, [sp, #4]
	sub	r3, fp, #444
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	mov	r3, r0
	strb	r3, [fp, #-334]
	ldr	r0, .L25+16
	bl	puts
	ldr	r3, [fp, #-32]
	cmp	r3, #1
	bne	.L2
	sub	ip, fp, #144
	sub	r2, fp, #140
	sub	r1, fp, #136
	sub	r0, fp, #132
	sub	r3, fp, #344
	str	r3, [sp, #4]
	ldr	r3, [fp, #-36]
	str	r3, [sp]
	mov	r3, ip
	bl	manually_place_ships_on_board
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-101]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #148
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #1
	str	r3, [sp, #8]
	mov	r3, #1
	str	r3, [sp, #4]
	sub	r3, fp, #344
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	mov	r3, r0
	strb	r3, [fp, #-234]
	sub	ip, fp, #144
	sub	r2, fp, #140
	sub	r1, fp, #136
	sub	r0, fp, #132
	sub	r3, fp, #344
	str	r3, [sp, #4]
	ldr	r3, [fp, #-40]
	str	r3, [sp]
	mov	r3, ip
	bl	manually_place_ships_on_board
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-102]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #148
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #1
	str	r3, [sp, #8]
	mov	r3, #1
	str	r3, [sp, #4]
	sub	r3, fp, #344
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	mov	r3, r0
	strb	r3, [fp, #-234]
	sub	ip, fp, #144
	sub	r2, fp, #140
	sub	r1, fp, #136
	sub	r0, fp, #132
	sub	r3, fp, #344
	str	r3, [sp, #4]
	ldr	r3, [fp, #-44]
	str	r3, [sp]
	mov	r3, ip
	bl	manually_place_ships_on_board
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-103]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #148
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #1
	str	r3, [sp, #8]
	mov	r3, #1
	str	r3, [sp, #4]
	sub	r3, fp, #344
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	mov	r3, r0
	strb	r3, [fp, #-234]
	sub	ip, fp, #144
	sub	r2, fp, #140
	sub	r1, fp, #136
	sub	r0, fp, #132
	sub	r3, fp, #344
	str	r3, [sp, #4]
	ldr	r3, [fp, #-48]
	str	r3, [sp]
	mov	r3, ip
	bl	manually_place_ships_on_board
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-104]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #148
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #1
	str	r3, [sp, #8]
	mov	r3, #1
	str	r3, [sp, #4]
	sub	r3, fp, #344
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	mov	r3, r0
	strb	r3, [fp, #-234]
	sub	ip, fp, #144
	sub	r2, fp, #140
	sub	r1, fp, #136
	sub	r0, fp, #132
	sub	r3, fp, #344
	str	r3, [sp, #4]
	ldr	r3, [fp, #-52]
	str	r3, [sp]
	mov	r3, ip
	bl	manually_place_ships_on_board
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-105]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #148
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #1
	str	r3, [sp, #8]
	mov	r3, #1
	str	r3, [sp, #4]
	sub	r3, fp, #344
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	mov	r3, r0
	strb	r3, [fp, #-234]
.L2:
	ldr	r3, [fp, #-32]
	cmp	r3, #2
	bne	.L3
	sub	ip, fp, #144
	sub	r2, fp, #140
	sub	r1, fp, #136
	sub	r0, fp, #132
	sub	r3, fp, #344
	str	r3, [sp, #4]
	ldr	r3, [fp, #-36]
	str	r3, [sp]
	mov	r3, ip
	bl	randomly_place_ships_on_board
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-101]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #148
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #1
	str	r3, [sp, #8]
	mov	r3, #0
	str	r3, [sp, #4]
	sub	r3, fp, #344
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	mov	r3, r0
	strb	r3, [fp, #-234]
	sub	ip, fp, #144
	sub	r2, fp, #140
	sub	r1, fp, #136
	sub	r0, fp, #132
	sub	r3, fp, #344
	str	r3, [sp, #4]
	ldr	r3, [fp, #-40]
	str	r3, [sp]
	mov	r3, ip
	bl	randomly_place_ships_on_board
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-102]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #148
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #1
	str	r3, [sp, #8]
	mov	r3, #0
	str	r3, [sp, #4]
	sub	r3, fp, #344
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	mov	r3, r0
	strb	r3, [fp, #-234]
	sub	ip, fp, #144
	sub	r2, fp, #140
	sub	r1, fp, #136
	sub	r0, fp, #132
	sub	r3, fp, #344
	str	r3, [sp, #4]
	ldr	r3, [fp, #-44]
	str	r3, [sp]
	mov	r3, ip
	bl	randomly_place_ships_on_board
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-103]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #148
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #1
	str	r3, [sp, #8]
	mov	r3, #0
	str	r3, [sp, #4]
	sub	r3, fp, #344
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	mov	r3, r0
	strb	r3, [fp, #-234]
	sub	ip, fp, #144
	sub	r2, fp, #140
	sub	r1, fp, #136
	sub	r0, fp, #132
	sub	r3, fp, #344
	str	r3, [sp, #4]
	ldr	r3, [fp, #-48]
	str	r3, [sp]
	mov	r3, ip
	bl	randomly_place_ships_on_board
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-104]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #148
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #1
	str	r3, [sp, #8]
	mov	r3, #0
	str	r3, [sp, #4]
	sub	r3, fp, #344
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	mov	r3, r0
	strb	r3, [fp, #-234]
	sub	ip, fp, #144
	sub	r2, fp, #140
	sub	r1, fp, #136
	sub	r0, fp, #132
	sub	r3, fp, #344
	str	r3, [sp, #4]
	ldr	r3, [fp, #-52]
	str	r3, [sp]
	mov	r3, ip
	bl	randomly_place_ships_on_board
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-105]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #148
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #1
	str	r3, [sp, #8]
	mov	r3, #1
	str	r3, [sp, #4]
	sub	r3, fp, #344
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	mov	r3, r0
	strb	r3, [fp, #-234]
.L3:
	mvn	r3, #0
	str	r3, [fp, #-132]
	mvn	r3, #0
	str	r3, [fp, #-136]
	mvn	r3, #0
	str	r3, [fp, #-140]
	mvn	r3, #0
	str	r3, [fp, #-144]
	bl	select_who_starts_first
	str	r0, [fp, #-68]
	ldr	r0, .L25+44
	bl	system
	ldr	r3, [fp, #-68]
	cmp	r3, #2
	bne	.L4
	mov	r3, #1
	str	r3, [fp, #-20]
.L4:
	ldr	r3, [fp, #-68]
	cmp	r3, #1
	beq	.L6
	cmp	r3, #2
	beq	.L7
	b	.L5
.L6:
	mvn	r3, #0
	str	r3, [fp, #-156]
	mvn	r3, #0
	str	r3, [fp, #-160]
	ldr	r0, .L25+48
	bl	system
	ldr	r0, .L25+20
	bl	puts
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-106]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #148
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #2
	str	r3, [sp, #8]
	mov	r3, #1
	str	r3, [sp, #4]
	sub	r3, fp, #444
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	ldr	r3, [fp, #-152]
	ldr	r2, [fp, #-20]
	mov	r1, r3
	ldr	r0, .L25+40
	bl	printf
	ldr	r0, .L25+16
	bl	puts
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-106]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #152
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #1
	str	r3, [sp, #8]
	mov	r3, #1
	str	r3, [sp, #4]
	sub	r3, fp, #344
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	ldr	r3, [fp, #-148]
	ldr	r2, [fp, #-16]
	mov	r1, r3
	ldr	r0, .L25+40
	bl	printf
	sub	r2, fp, #444
	sub	r1, fp, #160
	sub	r3, fp, #156
	mov	r0, r3
	bl	shoot_manual
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r0, .L25+48
	bl	system
	ldr	r0, .L25+20
	bl	puts
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-106]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #148
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #2
	str	r3, [sp, #8]
	mov	r3, #1
	str	r3, [sp, #4]
	sub	r3, fp, #444
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	mov	r3, r0
	strb	r3, [fp, #-334]
	ldr	r1, [fp, #-152]
	ldr	r2, [fp, #-160]
	ldr	r3, [fp, #-156]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #-20]
	ldr	r0, .L25+8
	bl	printf
	ldr	r2, [fp, #-156]
	ldr	r1, [fp, #-160]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	sub	r2, fp, #12
	add	r3, r2, r3
	add	r3, r3, r1
	sub	r3, r3, #432
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #42
	bne	.L8
	ldr	r0, .L25+28
	bl	puts
	mov	r3, #1
	str	r3, [fp, #-24]
.L8:
	ldr	r2, [fp, #-156]
	ldr	r1, [fp, #-160]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	sub	r2, fp, #12
	add	r3, r2, r3
	add	r3, r3, r1
	sub	r3, r3, #432
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #109
	bne	.L9
	ldr	r0, .L25+32
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-24]
.L9:
	sub	ip, fp, #172
	sub	r2, fp, #168
	sub	r1, fp, #164
	sub	r0, fp, #444
	sub	r3, fp, #180
	str	r3, [sp, #4]
	sub	r3, fp, #176
	str	r3, [sp]
	mov	r3, ip
	bl	check_ship
	ldr	r1, [fp, #-156]
	ldr	r2, [fp, #-160]
	sub	r3, fp, #180
	str	r3, [sp, #20]
	sub	r3, fp, #176
	str	r3, [sp, #16]
	sub	r3, fp, #172
	str	r3, [sp, #12]
	sub	r3, fp, #168
	str	r3, [sp, #8]
	sub	r3, fp, #164
	str	r3, [sp, #4]
	ldr	r3, [fp, #-24]
	str	r3, [sp]
	mov	r3, #1
	ldr	r0, [fp, #-128]
	bl	output_move
	mvn	r3, #0
	str	r3, [fp, #-156]
	mvn	r3, #0
	str	r3, [fp, #-160]
	ldr	r0, .L25+16
	bl	puts
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-106]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #152
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #1
	str	r3, [sp, #8]
	mov	r3, #1
	str	r3, [sp, #4]
	sub	r3, fp, #344
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	ldr	r3, [fp, #-148]
	ldr	r2, [fp, #-16]
	mov	r1, r3
	ldr	r0, .L25+40
	bl	printf
	ldr	r0, .L25+44
	bl	system
	ldr	r0, .L25+48
	bl	system
	ldr	r3, [fp, #-148]
	cmp	r3, #16
	bgt	.L10
	ldr	r0, .L25+20
	bl	puts
	mvn	r3, #0
	str	r3, [fp, #-156]
	mvn	r3, #0
	str	r3, [fp, #-160]
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-106]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #148
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #2
	str	r3, [sp, #8]
	mov	r3, #1
	str	r3, [sp, #4]
	sub	r3, fp, #444
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	ldr	r3, [fp, #-152]
	ldr	r2, [fp, #-20]
	mov	r1, r3
	ldr	r0, .L25+40
	bl	printf
	ldr	r0, .L25+16
	bl	puts
	sub	r2, fp, #344
	sub	r1, fp, #160
	sub	r3, fp, #156
	mov	r0, r3
	bl	shoot_random
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-106]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #152
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #1
	str	r3, [sp, #8]
	mov	r3, #1
	str	r3, [sp, #4]
	sub	r3, fp, #344
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	mov	r3, r0
	strb	r3, [fp, #-234]
	ldr	r1, [fp, #-148]
	ldr	r2, [fp, #-160]
	ldr	r3, [fp, #-156]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #-16]
	ldr	r0, .L25+24
	bl	printf
	ldr	r2, [fp, #-156]
	ldr	r1, [fp, #-160]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	sub	r2, fp, #12
	add	r3, r2, r3
	add	r3, r3, r1
	sub	r3, r3, #332
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #42
	bne	.L11
	ldr	r0, .L25+28
	bl	puts
	mov	r3, #1
	str	r3, [fp, #-24]
.L11:
	ldr	r2, [fp, #-156]
	ldr	r1, [fp, #-160]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	sub	r2, fp, #12
	add	r3, r2, r3
	add	r3, r3, r1
	sub	r3, r3, #332
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #109
	bne	.L12
	ldr	r0, .L25+32
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-24]
.L12:
	sub	ip, fp, #172
	sub	r2, fp, #168
	sub	r1, fp, #164
	sub	r0, fp, #344
	sub	r3, fp, #180
	str	r3, [sp, #4]
	sub	r3, fp, #176
	str	r3, [sp]
	mov	r3, ip
	bl	check_ship
	ldr	r1, [fp, #-156]
	ldr	r2, [fp, #-160]
	sub	r3, fp, #180
	str	r3, [sp, #20]
	sub	r3, fp, #176
	str	r3, [sp, #16]
	sub	r3, fp, #172
	str	r3, [sp, #12]
	sub	r3, fp, #168
	str	r3, [sp, #8]
	sub	r3, fp, #164
	str	r3, [sp, #4]
	ldr	r3, [fp, #-24]
	str	r3, [sp]
	mov	r3, #2
	ldr	r0, [fp, #-128]
	bl	output_move
.L10:
	ldr	r0, .L25+44
	bl	system
	ldr	r0, .L25+48
	bl	system
	ldr	r3, [fp, #-148]
	cmp	r3, #16
	bgt	.L23
	ldr	r3, [fp, #-152]
	cmp	r3, #16
	ble	.L6
	b	.L23
.L26:
	.align	2
.L25:
	.word	.LC0
	.word	.LC1
	.word	.LC7
	.word	.LC11
	.word	.LC5
	.word	.LC4
	.word	.LC10
	.word	.LC8
	.word	.LC9
	.word	.LC12
	.word	.LC6
	.word	.LC2
	.word	.LC3
	.word	.LC13
	.word	.LC14
.L7:
	mvn	r3, #0
	str	r3, [fp, #-156]
	mvn	r3, #0
	str	r3, [fp, #-160]
	ldr	r0, .L25+48
	bl	system
	ldr	r0, .L25+20
	bl	puts
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-106]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #148
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #2
	str	r3, [sp, #8]
	mov	r3, #1
	str	r3, [sp, #4]
	sub	r3, fp, #444
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	ldr	r3, [fp, #-152]
	ldr	r2, [fp, #-20]
	mov	r1, r3
	ldr	r0, .L25+40
	bl	printf
	ldr	r0, .L25+16
	bl	puts
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-106]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #152
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #1
	str	r3, [sp, #8]
	mov	r3, #1
	str	r3, [sp, #4]
	sub	r3, fp, #344
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	ldr	r3, [fp, #-148]
	ldr	r2, [fp, #-16]
	mov	r1, r3
	ldr	r0, .L25+12
	bl	printf
	ldr	r0, .L25+48
	bl	system
	ldr	r0, .L25+20
	bl	puts
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-106]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #148
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #2
	str	r3, [sp, #8]
	mov	r3, #1
	str	r3, [sp, #4]
	sub	r3, fp, #444
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	ldr	r3, [fp, #-152]
	ldr	r2, [fp, #-20]
	mov	r1, r3
	ldr	r0, .L25+40
	bl	printf
	ldr	r0, .L25+16
	bl	puts
	sub	r2, fp, #344
	sub	r1, fp, #160
	sub	r3, fp, #156
	mov	r0, r3
	bl	shoot_random
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-106]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #152
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #1
	str	r3, [sp, #8]
	mov	r3, #1
	str	r3, [sp, #4]
	sub	r3, fp, #344
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	mov	r3, r0
	strb	r3, [fp, #-234]
	ldr	r1, [fp, #-148]
	ldr	r2, [fp, #-160]
	ldr	r3, [fp, #-156]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #-16]
	ldr	r0, .L25+24
	bl	printf
	ldr	r2, [fp, #-156]
	ldr	r1, [fp, #-160]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	sub	r2, fp, #12
	add	r3, r2, r3
	add	r3, r3, r1
	sub	r3, r3, #332
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #42
	bne	.L14
	ldr	r0, .L25+28
	bl	puts
	mov	r3, #1
	str	r3, [fp, #-24]
.L14:
	ldr	r2, [fp, #-156]
	ldr	r1, [fp, #-160]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	sub	r2, fp, #12
	add	r3, r2, r3
	add	r3, r3, r1
	sub	r3, r3, #332
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #109
	bne	.L15
	ldr	r0, .L25+32
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-24]
.L15:
	sub	ip, fp, #172
	sub	r2, fp, #168
	sub	r1, fp, #164
	sub	r0, fp, #344
	sub	r3, fp, #180
	str	r3, [sp, #4]
	sub	r3, fp, #176
	str	r3, [sp]
	mov	r3, ip
	bl	check_ship
	ldr	r1, [fp, #-156]
	ldr	r2, [fp, #-160]
	sub	r3, fp, #180
	str	r3, [sp, #20]
	sub	r3, fp, #176
	str	r3, [sp, #16]
	sub	r3, fp, #172
	str	r3, [sp, #12]
	sub	r3, fp, #168
	str	r3, [sp, #8]
	sub	r3, fp, #164
	str	r3, [sp, #4]
	ldr	r3, [fp, #-24]
	str	r3, [sp]
	mov	r3, #2
	ldr	r0, [fp, #-128]
	bl	output_move
	ldr	r3, [fp, #-152]
	cmp	r3, #16
	bgt	.L16
	sub	r2, fp, #444
	sub	r1, fp, #160
	sub	r3, fp, #156
	mov	r0, r3
	bl	shoot_manual
	ldr	r3, [fp, #-16]
	add	r3, r3, #1
	str	r3, [fp, #-16]
	ldr	r0, .L25+48
	bl	system
	ldr	r0, .L25+20
	bl	puts
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-106]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #148
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #2
	str	r3, [sp, #8]
	mov	r3, #1
	str	r3, [sp, #4]
	sub	r3, fp, #444
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	mov	r3, r0
	strb	r3, [fp, #-334]
	ldr	r1, [fp, #-152]
	ldr	r2, [fp, #-160]
	ldr	r3, [fp, #-156]
	str	r3, [sp]
	mov	r3, r2
	ldr	r2, [fp, #-20]
	ldr	r0, .L25+24
	bl	printf
	ldr	r2, [fp, #-156]
	ldr	r1, [fp, #-160]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	sub	r2, fp, #12
	add	r3, r2, r3
	add	r3, r3, r1
	sub	r3, r3, #432
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #42
	bne	.L17
	ldr	r0, .L25+28
	bl	puts
	mov	r3, #1
	str	r3, [fp, #-24]
.L17:
	ldr	r2, [fp, #-156]
	ldr	r1, [fp, #-160]
	mov	r3, r2
	lsl	r3, r3, #2
	add	r3, r3, r2
	lsl	r3, r3, #1
	sub	r2, fp, #12
	add	r3, r2, r3
	add	r3, r3, r1
	sub	r3, r3, #432
	ldrb	r3, [r3]	@ zero_extendqisi2
	cmp	r3, #109
	bne	.L18
	ldr	r0, .L25+32
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-24]
.L18:
	sub	ip, fp, #172
	sub	r2, fp, #168
	sub	r1, fp, #164
	sub	r0, fp, #444
	sub	r3, fp, #180
	str	r3, [sp, #4]
	sub	r3, fp, #176
	str	r3, [sp]
	mov	r3, ip
	bl	check_ship
	ldr	r0, .L25+36
	bl	puts
	ldr	r0, [fp, #-132]
	ldr	ip, [fp, #-136]
	ldr	lr, [fp, #-140]
	ldr	r4, [fp, #-144]
	ldr	r3, [fp, #-156]
	ldr	r2, [fp, #-160]
	ldrb	r1, [fp, #-106]	@ zero_extendqisi2
	str	r1, [sp, #28]
	sub	r1, fp, #544
	str	r1, [sp, #24]
	sub	r1, fp, #152
	str	r1, [sp, #20]
	str	r2, [sp, #16]
	str	r3, [sp, #12]
	mov	r3, #1
	str	r3, [sp, #8]
	mov	r3, #1
	str	r3, [sp, #4]
	sub	r3, fp, #344
	str	r3, [sp]
	mov	r3, r4
	mov	r2, lr
	mov	r1, ip
	bl	initialize_game_board
	ldr	r3, [fp, #-148]
	ldr	r2, [fp, #-16]
	mov	r1, r3
	ldr	r0, .L25+40
	bl	printf
	ldr	r1, [fp, #-156]
	ldr	r2, [fp, #-160]
	sub	r3, fp, #180
	str	r3, [sp, #20]
	sub	r3, fp, #176
	str	r3, [sp, #16]
	sub	r3, fp, #172
	str	r3, [sp, #12]
	sub	r3, fp, #168
	str	r3, [sp, #8]
	sub	r3, fp, #164
	str	r3, [sp, #4]
	ldr	r3, [fp, #-24]
	str	r3, [sp]
	mov	r3, #1
	ldr	r0, [fp, #-128]
	bl	output_move
.L16:
	ldr	r3, [fp, #-20]
	add	r3, r3, #1
	str	r3, [fp, #-20]
	ldr	r0, .L25+44
	bl	system
	ldr	r0, .L25+48
	bl	system
	ldr	r3, [fp, #-148]
	cmp	r3, #16
	bgt	.L24
	ldr	r3, [fp, #-152]
	cmp	r3, #16
	ble	.L7
	b	.L24
.L23:
	nop
	b	.L5
.L24:
	nop
.L5:
	ldr	r3, [fp, #-148]
	cmp	r3, #17
	bne	.L20
	ldr	r0, .L25+52
	bl	puts
	mov	r3, #1
	str	r3, [fp, #-188]
	mov	r3, #0
	str	r3, [fp, #-220]
.L20:
	ldr	r3, [fp, #-152]
	cmp	r3, #17
	bne	.L21
	ldr	r0, .L25+56
	bl	puts
	mov	r3, #0
	str	r3, [fp, #-188]
	mov	r3, #1
	str	r3, [fp, #-220]
.L21:
	ldr	r3, [fp, #-148]
	ldr	r2, [fp, #-16]
	sub	r3, r2, r3
	str	r3, [fp, #-72]
	ldr	r3, [fp, #-152]
	ldr	r2, [fp, #-20]
	sub	r3, r2, r3
	str	r3, [fp, #-76]
	ldr	r3, [fp, #-148]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d6, .L27
	vmul.f64	d5, d7, d6
	ldr	r3, [fp, #-16]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vdiv.f64	d7, d5, d6
	vstr.64	d7, [fp, #-116]
	ldr	r3, [fp, #-152]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d7, s15
	vldr.64	d6, .L27
	vmul.f64	d5, d7, d6
	ldr	r3, [fp, #-20]
	vmov	s15, r3	@ int
	vcvt.f64.s32	d6, s15
	vdiv.f64	d7, d5, d6
	vstr.64	d7, [fp, #-124]
	mov	r3, #1
	str	r3, [fp, #-212]
	ldr	r3, [fp, #-148]
	str	r3, [fp, #-208]
	ldr	r3, [fp, #-72]
	str	r3, [fp, #-204]
	ldr	r3, [fp, #-16]
	str	r3, [fp, #-200]
	ldrd	r2, [fp, #-116]
	strd	r2, [fp, #-196]
	mov	r3, #2
	str	r3, [fp, #-244]
	ldr	r3, [fp, #-152]
	str	r3, [fp, #-240]
	ldr	r3, [fp, #-76]
	str	r3, [fp, #-236]
	ldr	r3, [fp, #-20]
	str	r3, [fp, #-232]
	ldrd	r2, [fp, #-124]
	strd	r2, [fp, #-228]
	mov	lr, sp
	sub	ip, fp, #204
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	sub	r3, fp, #212
	ldm	r3, {r2, r3}
	ldr	r0, [fp, #-128]
	bl	output_stats
	mov	lr, sp
	sub	ip, fp, #236
	ldmia	ip!, {r0, r1, r2, r3}
	stmia	lr!, {r0, r1, r2, r3}
	ldm	ip, {r0, r1}
	stm	lr, {r0, r1}
	sub	r3, fp, #244
	ldm	r3, {r2, r3}
	ldr	r0, [fp, #-128]
	bl	output_stats
	ldr	r1, [fp, #-148]
	ldrd	r2, [fp, #-116]
	strd	r2, [sp]
	ldr	r3, [fp, #-16]
	ldr	r2, [fp, #-72]
	ldr	r0, .L27+8
	bl	printf
	ldr	r1, [fp, #-152]
	ldrd	r2, [fp, #-124]
	strd	r2, [sp]
	ldr	r3, [fp, #-20]
	ldr	r2, [fp, #-76]
	ldr	r0, .L27+12
	bl	printf
	ldr	r0, [fp, #-128]
	bl	fclose
	mov	r3, #0
	mov	r0, r3
	sub	sp, fp, #8
	@ sp needed
	pop	{r4, fp, pc}
.L28:
	.align	3
.L27:
	.word	0
	.word	1079574528
	.word	.LC15
	.word	.LC16
	.size	main, .-main
	.ident	"GCC: (Raspbian 6.3.0-18+rpi1) 6.3.0 20170516"
	.section	.note.GNU-stack,"",%progbits
