#include <stdio.h>
#include <stdlib.h>

/*
Pour vérifier l'affichage des sections .data , .bss et .rodata 
*/
void main(){

int a;
int b;
int c;
int d = 1;
int e = 2;
int f = 3;
printf("Donnez 3 entrées:\n");

scanf("%d",&a);
scanf("%d",&b);
scanf("%d",&c);


printf("%d",a+b+c+d+e+f);
}
