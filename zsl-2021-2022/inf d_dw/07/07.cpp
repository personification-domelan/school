#include <iostream>

using namespace std;

void sort(int table[], int n) {
	for (int i = 1; i < n; i++) {
		int temp = table[i];
		int a = i - 1;
		while (a >= 0 && temp <= table[a]) {
			table[a + 1] = table[a];
			a = a - 1;
		}
		table[a + 1] = temp;
	}
}

void ct(int table[], int n, int t) {
	if (t != 0) {
		cout << "REBACK" << endl;
	}
	for (int i = 0; i < n; i++) {
		cout << table[i];
	}
	if (t == 0) {
		cout << "\n\n";
	}
}

int main() {
	int table[] = {7,5,9,1,0,5,3,1}, n = sizeof(table)/sizeof(table[0]);
	ct(table, n, 0);
	sort(table, n);
	ct(table, n, 1);
	getchar();
	return 0;
}