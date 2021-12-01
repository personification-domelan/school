#include <iostream>

using namespace std;

void sort(int table[], int n) {
	for (int i = 0; i < n; i++){
		int min = table[i], index = i;
		for (int a = i + 1; a < n; a++){
			if (table[a] < min) {
				min = table[a];
				index = a;
			}
		}
		table[index] = table[i];
		table[i] = min;
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
	int table[] = { 7,5,9,1,0,5,3,1 }, n = sizeof(table) / sizeof(table[0]);
	ct(table, n, 0);
	sort(table, n);
	ct(table, n, 1);
	getchar();
	return 0;
}