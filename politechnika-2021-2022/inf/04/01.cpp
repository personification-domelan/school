#include <iostream>

using namespace std;

void swap(int &x, int &y) {
    int temp = x;
    x = y;
    y = temp;
}

void show(int tab[], int r) {
    cout << "DRAWING TABLE:" << endl;
    for (int i = 0; i < r; i++) cout << i << ". " << tab[i] << endl;
}

void boubleSort(int tab[], int r) {
    for (int i = 0; i < r-1; i++) {
        for (int j = 0; j < r-i-1; j++) if (tab[j] > tab[j+1]) swap(tab[j], tab[j+1]);
    }
}

void selectSort(int tab[], int r) {
    int id = 0;
    for (int i = 0; i < r-1; i++) {
        id = i;
        for (int j = i + 1; j < r; j++) if (tab[j] < tab[id]) id = j;
        swap(tab[i], tab[id]);
    }
}

void insertSort(int tab[], int r) {
    int k = 0, j = 0;
    for (int i = 1; i < r; i++) {
        j = i-1; k = tab[i];
        while (j >= 0 && tab[j] > k) {
            tab[j+1] = tab[j];
            j--;
        }
        tab[j+1]=k;
    }
}

void merge(int tab[], int l, int mid, int r) {
    int p1 = mid-l+1, p2 = r-mid;
    int *L = new int[p1], *R = new int[p2];
    for (int i=0; i<p1; i++) L[i] = tab[l+i];
    for (int i=0; i<p2; i++) R[i] = tab[mid+1+i];
    int i = 0, j = 0, id = l;
    while (i<p1 && j<p2) {
        if (L[i]<=R[j]) {
            tab[id]=L[i];
            id++; i++;
        } else {
            tab[id]=R[j];
            id++; j++;
        }
    }
    while (i<p1) {
        tab[id] = L[i];
        i++; id++;
    }
    while (j<p2) {
        tab[id] = R[j];
        j++; id++;
    }
}

void mergeSort(int tab[], int l, int r) {
    if (l<r) {
        int mid = l+(r-l)/2;
        mergeSort(tab, l, mid);    
        mergeSort(tab, mid+1, r);
        merge(tab, l, mid, r);    
    }
}

void quickSort(int tab[], int l, int r) {
    
}

int main() {
    int tab[] = {9,2,7,1,5,8,4,2,2,7};
    int r = sizeof(tab)/sizeof(tab[0]);
    show(tab, r);
    quickSort(tab, 0, r);
    show(tab, r);
    return 0;
}