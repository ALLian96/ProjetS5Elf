#include <stdio.h>


int soustraction(int a, int b){
	return a-b;
}



int main(){
	int a, b;
	printf("Donnez deux entrées:\n");

	scanf("%d",&a);
	scanf("%d",&b);
	printf("Le résultat de soustraction:%d\n",soustraction(a,b));

return 0;

}
