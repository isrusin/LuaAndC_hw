#include <stdio.h>
#include <math.h>

typedef struct{
	double x;
	double y;
} Point;

double getLength(Point* fst, Point* snd) {
	return sqrt(pow(fst->x - snd->x, 2) + pow(fst->y - snd->y, 2));
}

int main() {
	Point triangle[3];
	printf("Enter coordinates of a triangle vertices (6 numbers):\n");
	int i;
	for (i=0; i<3; i++) {
		scanf("%lf", &(triangle[i].x));
		scanf("%lf", &(triangle[i].y));
	}
	double a, b, c, p;
	a = getLength(&(triangle[0]), &(triangle[1]));
	b = getLength(&(triangle[1]), &(triangle[2]));
	c = getLength(&(triangle[2]), &(triangle[0]));
	p = (a+b+c) / 2;
	double area = sqrt(p * (p-a) * (p-b) * (p-c));
	printf("%.2f\n", area);
}
