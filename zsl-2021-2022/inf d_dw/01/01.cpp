#include <iostream>
#include <conio.h>
#include <cstdlib>
#include <string>
#include <time.h>
#include <windows.h>

using namespace std;

long long fib(int a) {
    if (a < 3) return 1;
    else return fib(a-2)+fib(a-1);
}

int main() {
    int a = 0;
    cout << "Ile powtorzen chcesz" << endl; cin >> a;
    cout << fib(a) << endl;
    Sleep(1500);
    _getch();
    return 0;
}