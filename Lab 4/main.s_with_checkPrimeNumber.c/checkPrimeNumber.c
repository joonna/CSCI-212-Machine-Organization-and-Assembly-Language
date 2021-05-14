int checkPrimeNumber(int n)

{
 	int j, flag = 1;
 	for(j=2; j <= n/2; ++j)
 	{
 		if (n%j == 0)
 		{
 			flag =0;
 			break;
 		}
 	}
 	return flag;
}