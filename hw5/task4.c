#include <stdio.h>

int main() {
	int N;
	printf("Enter N value: ");
	scanf("%d", &N);
	int helix[N][N];
	int* index = helix[0] - 1;
	int xstep = 1;
	int ystep = 0;
	int size = N;
	int item = 1;
	int i;
	while(size != 0) {
		for(i=0; i<size; i++) {
			index += xstep + N*ystep;
			*index = item;
			item++;
		}
		if(xstep) {
			size--;
		}
		int temp = ystep;
		ystep = xstep;
		xstep = -temp;
	}
	for(i=0; i<N; i++) {
		int j;
		for(j=0; j<N; j++) {
			printf("%3d ", helix[i][j]);
		}
		printf("\n");
	}
}
