#include <iostream>
#include <math.h>

using namespace std;

int main()
{
	int XX = 0, YY = 0;
	float d;
	cout << "Wprowadz x punktu: "; cin >> XX;
	cout << "\nWprowadz y punktu: "; cin >> YY;
	d = sqrt((XX * XX) + (YY * YY));
	if (d < 5)
	{
		cout << "\nPunkt zanjduje sie w okregu.";
	}
	else if (d > 5)
	{		
		cout << "\nPunkt zanjduje sie poza okregiem.";
	}
	else
	{
		cout << "\nPunkt zanjduje sie na okregu.";
	}
}