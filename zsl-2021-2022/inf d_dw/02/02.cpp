#include <iostream>

using namespace std;

enum name { krol, pion, wieza, kon, goniec, damka };
enum color { bialy, czarny };

struct figura_szachowa
{
	name name;
	color color;
	int value;
	unsigned char x;
	unsigned int y;
	char symbol;
	bool state;
};

int main()
{
	figura_szachowa f1;
	cin >> f1.name;
	cout << f1;
}