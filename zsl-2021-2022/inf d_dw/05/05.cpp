#include <iostream>
#include <algorithm>

using namespace std;

int main() {
	int a = 0, c = 0;
	int ar[] = { 5,5,5,5,5,5,5,5,1,1,2,7,7,5,7,8,9,10 };
	int n = sizeof(ar) / sizeof(ar[0]);
	float nt = n / 2.0;
	cout << n << endl << nt << endl;
	sort(ar, ar + n);
	int l = ar[0];
	for (int i = 0; i < n; i++)
	{
		if (a == 0) { l = ar[i]; a = 1; } else { if (l == ar[i]) { a++; } else { a--; } }
		cout << i+1 << ". " << a << " | " << l << " | " << ar[i] << endl;
	}
	for (int i = 0; i < n; i++)
	{
		if (ar[i] == l) { c++; }
	}
	if ( c < nt ) {
		cout << "NULL | NULL" << endl;
	}
	else {
		cout << l << " | " << c << endl;
	}
	//cout << a << " | " << l << endl;
	getchar();
	return 0;
}