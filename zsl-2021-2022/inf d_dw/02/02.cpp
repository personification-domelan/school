#include <iostream>

using namespace std;

enum name {krol,pion,wieza,kon,goniec,damka};
enum kolor {bialy,czarny};

struct figura_szachowa
{
	name name;
	kolor kolor;
	int value;
	unsigned char x;
	unsigned int y;
	char symbol;
	bool state;
};

int main()
{
	figura_szachowa f1;
	f1.name = krol;
	cout << f1;
}