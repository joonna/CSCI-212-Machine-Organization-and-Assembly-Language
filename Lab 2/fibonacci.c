#include <stdio.h>

int fib(int n)
{
	if((n==1) || (n==0))
	{
	return (n);
	}
	else
	{
	return (fib(n-1) + fib(n-2));
	}
}

int main()
{
	int n, i = 0;
	printf("input number of terms in fibonacci sequence");
	scanf("%d", &n);
	printf("\n%d terms in the finoacci series\n", n);
	while (i<n)
	{
	printf("%d ", fib(i));
	i++;
	}
return 0;
}