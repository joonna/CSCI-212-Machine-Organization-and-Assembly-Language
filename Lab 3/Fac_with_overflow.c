#define _CRT_SECURE_NO_WARNINGS
#include <stdio.h>

int main() {
	int n, i;
	int factorial = 1;
	
	printf("Enter an integer:");
	scanf ("%d", &n);

	if (n < 0)
		printf("error! input is negative and cannot be calculated.");
	else {
		for (i = 1; i <= n; i++) {
			factorial *= i;
		} if (factorial <= 65279) {
			//checks for overflow
			printf("Factorial of %d = %d", n, factorial);
		} else {
			printf("Overflow occurred");
		}
		return 0;
	}
}