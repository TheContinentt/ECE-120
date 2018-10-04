


#include <stdio.h>
  
int main()
{
   int x, y, z, g;
   printf("\nTruth Table\n"); 
   printf("x y z   g\n");
  
   for (x = 0; x <= 1; x=x+1)
   {
       for (y = 0; y <= 1; y=y+1)
       {   
           for (z = 0; z <= 1; z=z+1)
           {
               g = (~x&~y&z) | (~x&y&z) | (x&~y&z) | (x&~y&~z) | (x&y&z);
               printf("%d %d %d   %d\n", x, y, z, g);                        
           }
       }
    }
    return 0;   
}
