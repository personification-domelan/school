#include <iostream>
#include <time.h>
#include <stdlib.h>

using namespace std;

int main()
{
	srand(time(NULL));
	int tab[18], min;
	for (int i = 0; i < 18; i++)
	{
		tab[i] = rand()%30-15;
	}
	min = tab[0];
	for (int i = 0; i < 18; i++)
	{
		if (tab[i] < min)
		{
			min = tab[i];
		}
	}
	cout << min;
}