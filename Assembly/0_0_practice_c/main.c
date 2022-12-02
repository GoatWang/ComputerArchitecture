#include<stdio.h>

int function(int a, int b, int c, int d);

int main(void)
{
    int a, b, c, d;
    // scanf("%i%i%i%i", a, b, c, d);
    a=-10; 
    b=-8; 
    c=-7; 
    d=-6;
    // if (a<0){
    //     int e = a * d;
    //     int f = b * c;
    //     int g = e - f;
    //     printf("%i\n", g);
    // }
    printf("output: %i\n", function(a, b, c, d));
}

int function(int a, int b, int c, int d)
{
    int e = a * d;
    int f = b * c;
    int g = e - f;
    return g;
}
