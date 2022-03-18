#include <iostream>
#include <cmath>

using namespace std;

void calc(float &a, float &b, float &c, float &d, float &f){
        c=(a+b)/2;
        f+=d*pow(c,2);
        a=b; b=a+d;
}

int main() {
    float f=0, d, p, q, l, a, b, c;
    cout<<"Wprowadz poczatek: ";cin >>p;
    cout<<"Wprowadz koniec: ";cin >>q;
    cout<<"Wprowadz liczbe przedzialow: ";cin >>l;
    d=(q-p)/l; a=p; b=a+d;
    cout<<a<<" | "<<b<<" | "<<c<<" | "<<d<<" | "<<f<<endl;
    for (int i=0; i<l; i++){
        calc(a, b, c, d, f);
        cout<<a<<" | "<<b<<" | "<<c<<" | "<<d<<" | "<<f<<endl;
    }
    cout<<"Wynik: "<<f;
};