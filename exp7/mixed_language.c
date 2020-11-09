// Assembly language program to separate even or odd numbers from an array using mixed language programming

#include<stdio.h>
#include <curses.h>
#define MAX 20

int main()
{
	int arr[MAX], even[MAX], odd[MAX];
	int n, i, j=0, k=0;
	char rem, dv=2;
	clrscr();

	printf("\nMixed language program to separate even and odd numbers:-\n");
	printf("\nEnter array size: ");
	scanf("%d", &n);
	printf("\nEnter the array elements: ");
	for(i=0; i<n; i++) {
		scanf("%d", &arr[i]);
	}

	asm lea si, arr
	asm mov cx, n
	back: asm mov ax, [si]
	asm mov n, ax
	asm div dv
	asm mov rem, ah

	if(rem==1) {
		odd[j] = n;
		j++;
	}
	else {
		even[k] = n;
		k++;
	}

	asm inc si
	asm inc si
	asm loop back

	printf("\nEven nos:-\n");
	for(i=0; i<j; i++) {
		printf(" %d ", even[i]);
	}
	printf("\n\nOdd nos:-\n");
	for(i=0; i<k; i++) {
		printf(" %d ", odd[i]);
	}

	getch();

    return 0;
}

