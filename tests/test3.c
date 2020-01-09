#include <stdio.h>
#include <fich1b.h>

int produit(int a,int b){
	return a*b;
}

int main(){
	int a, b;
	printf("Donnez deux entrées:\n");

	scanf("%d",&a);
	scanf("%d",&b);
	printf("Le résultat:%d\n",addition(a,b));
	printf("Le résultat:%D\n",produit(a,b));



return 0;

}
