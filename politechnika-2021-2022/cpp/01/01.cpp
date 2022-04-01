#include <iostream>

using namespace std;

void calc(double &a, double &b, double p) {
    b = (a + b)/2;
    a = p/b;
};

int main() {
    double Epsilon = 0.001, a = 2; int p = 0, it = 0, i = 0;
    cout << "Wprowadz p: ";cin >> p; double b = p;
    cout << "Wprowadz ilosc iteracji: ";cin >> it;
    cout <<a<<" | "<<b<<" | "<<p<<" | "<<i<<endl;
    while (Epsilon < (b - a) && i <= (it-1)) {
        calc(a, b, p);
        ++i;
        cout <<a<<" | "<<b<<" | "<<p<<" | "<<i<<endl;
    }
    cout << "\n\nWynik: " << b << " w: " << i << " iteracji.";
};