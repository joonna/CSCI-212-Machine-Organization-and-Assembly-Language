#include <stdio.h>
#include <stdlib.h>

int main(int argc, char *argv[]) 
{
	int i;

	if (argc != 3)
		return 0;

	i = atoi(argv[1]) + atoi(argv[2]);
	printf("Sum: %d\n", i);

	return i;
}