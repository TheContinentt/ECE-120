#include <stdio.h>  
#include <math.h>  

int main()  
{  
    int count = 1;
    int a = 256;
    
    while(count < sqrt(a))
    {
       printf("%d\n", a);
       a = sqrt(a);
    }
    printf("%d\n",1);
}  
