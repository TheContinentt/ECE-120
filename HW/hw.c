/*
 *	
 *  Factorial!: Computes the factorial of a positive integer
 *
 */

#include <stdio.h>

int main()
{
    /* Initialization */
    int factorial;   /* input to be entered by the user */
    int result;      /* result,  factorial! */
    printf("Please enter a number: ");
    scanf("%d", &factorial);
    while (factorial <= 0 || factorial >=13){
    printf ("The input is not acceptable, try again.\n");
    scanf("%d", &factorial);
    } 
    /* Compute factorial */
    result = 1;
    while (factorial <= 12) {
        result *= factorial;
        factorial = factorial -1;
    }
    /* Print the answer */
    printf("%d\n", result);

    return 0;
}
