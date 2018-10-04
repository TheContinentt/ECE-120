#include <stdio.h>
int main()
{
    unsigned int w, x, y, z;
    unsigned int f; 
    printf("         yz      \n");
    printf("     00 01 11 10 \n");
    printf("   ______________\n");
         
    for (w = 0; w < 2; w=w+1)
    {
        for (x = 0; x < 2; x=x+1)
        {
		if (w == 1)
		{
			x = !x ;}
		if (w==0)
			{
				if (x==0)
					{printf("00 ");}
				else {
				printf("01 ");}
			}
		else {
			printf("%u%u ", w, x);
			}
		for (y = 0; y < 2; y=y+1)
                {
			for (z = 0; z < 2; z=z+1)
                	{
				if (y == 1)
				{
  					z = !z;
				}
   			f= (x&(!y) | z&(!w)) ;
				printf("  %u", f);
				if (y==1)
				{
				z=!z;
				}
 
		        }
                }
		if (w==1)
		{
		x=!x;
		}
        printf("\n");
       }    
    }
 return 0;
}

