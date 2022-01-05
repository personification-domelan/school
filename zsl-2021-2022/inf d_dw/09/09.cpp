#include <iostream>

using namespace std;

void printtab(int table[], int n, int indent) {
    for (int i = 0; i < n; i++) {
        cout << table[i] << ", ";
    }
    if (indent == 0) {cout << endl << "SORTING IN PROGRESS" << endl;}
}

void sort(int tab[], int n) {
    int min;
    for (int i = 0; i < n; i++) {
        min = tab[i];
        for (int j = 0; j < n; j++) {
            if (tab[j] > min) {
                min = tab[j];
                swap(tab[j],tab[i]);
            }
        }
    }
	int x = 0;
	while (tab[x] <= 0) {
		x++;
	}
	for (int i = x; i < n - 1; i++) {
		for (int j = i + 1; j < n; j++) {
			if (tab[i]%2==0 && tab[j]%2==0) {
				if (tab[j]<tab[i]) {
					swap(tab[i],tab[j]);
				}
			} else if (tab[i]%2 != 0 && tab[j]%2 == 0) {
				swap(tab[i],tab[j]);
			} else if (tab[i]%2 != 0 && tab[j]%2 != 0) {
				if (tab[j] > tab[i]) {
					swap(tab[i],tab[j]);
				}
			}
		}
	}
}

int main() {
    int tab[] = {/*Dane do wprowadzenia*/};
    int n = sizeof(tab)/sizeof(tab[0]);
    printtab(tab,n,0);
    sort(tab,n);
    printtab(tab,n,1);
}