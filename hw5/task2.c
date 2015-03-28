#include <stdio.h>
#include <stdlib.h>
#include <math.h>

typedef struct{
	double x;
	double y;
	double d;
} Point;

void calcDistance(Point* p) {
	p->d = sqrt(pow(p->x, 2) + pow(p->y, 2));
}

int cmpDistance(const void* fst, const void* snd) {
	Point* fstp = *(Point**)fst;
	Point* sndp = *(Point**)snd;
	double diff = fstp->d - sndp->d;
	if(diff > 0) {
		return 1;
	}
	else if(diff == 0) {
		return 0;
	}
	else {
		return -1;
	}
}

int main() {
	int number = 5;
	Point points[number];
	Point* links[number];
	printf("Enter coordinates of 5 points (10 numbers):\n");
	int i;
	for(i=0; i<number; i++) {
		scanf("%lf", &(points[i].x));
		scanf("%lf", &(points[i].y));
		links[i] = &(points[i]);
		calcDistance(links[i]);
	}
	qsort(links, number, sizeof(Point*), cmpDistance);
	for(i=0; i<number; i++) {
		printf("(%.1f; %.1f) d=%.2f\n",
		       links[i]->x, links[i]->y, links[i]->d);
	}
}
