#include <stdio.h>
#include <stdlib.h>
#include <sys/types.h>

int64_t my_strange_function(int64_t x) 
{
	int64_t result = x;
	int64_t i = 0;

	for(i = 0; i < x; i++)
		result = result ^ i;

	return x;
}

intmain(int argc, char* argv[])
{

	if (argc != 2)return 0;

	printf("result: %llx\n", my_strange_function(atoi(argv[1]))); return 1;
}