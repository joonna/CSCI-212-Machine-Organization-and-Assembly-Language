#ifndef header_h
#define header_h
#include<stdio.h>
#include<stdlib.h>
#include<math.h>

typedef struct
{
	int player_num;
	int hits;
	int misses;
	int shots;
	double accuracy;
	int win;
} stats;

//Funtion Prototypes: (each function description is in 'function.c')

void welcome_screen(void);

char initialize_game_board(int x1, int y1, int x2, int y2, char board[10][10], int print, int player,
	int xtarget, int ytarget, int* hits, char visible[10][10], char type);

int select_who_starts_first(void);

int deploy_ships(void);

void manually_place_ships_on_board(int* x1, int* y1, int* x2, int* y2, int size, char board[10][10]);

void randomly_place_ships_on_board(int* x1, int* y1, int* x2, int* y2, int size, char board[10][10]);

void shoot_manual(int* xtarget, int* ytarget, char board[10][10]);

void shoot_random(int* xtarget, int* ytarget, char board[10][10]);

int check_ship(char board[10][10], int* sunkc, int* sunkb, int* sunkr, int* sunks, int* sunkd);

void output_move(FILE* outfile, int xtarget, int ytarget, int player, int hit, int* sunkc, int* sunkb, int* sunkr, int* sunks, int* sunkd);

void output_stats(FILE* outfile, stats player);

#endif
