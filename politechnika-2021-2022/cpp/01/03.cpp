#include <iostream>
#include <cmath>

using namespace std;

float f (float x) {
    return (pow(x,2)+x-10);
}

float g (float x) {
    return (-pow(x,2)-15);
}

float calc(float a, float b, float d, float pr){
    float a1=f(a), b1=f(b), a2=g(a), b2=g(b);
    cout<<a1<<" | "<<b1<<" | "<<a2<<" | "<<b2<<" | ";
    pr+=((((a1+(-a2))+(b1+(-b2)))*d)/2);
    return pr;
}

int main() {
    float f=0, d, p, q, l, a, b;
    cout<<"Wprowadz poczatek: ";cin >>p;
    cout<<"Wprowadz koniec: ";cin >>q;
    cout<<"Wprowadz liczbe przedzialow: ";cin >>l;
    d=(q-p)/l; a=p; b=a+d;
    cout<<a<<" | "<<b<<" | "<<d<<" | "<<f<<endl;
    for (int i=0; i<l; i++){
        f = calc(a, b, d, f);
        a=b; b=a+d;
        cout<<a<<" | "<<b<<" | "<<d<<" | "<<f<<endl;
    }
    cout<<"Wynik: "<<f;
};