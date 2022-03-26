#include <iostream>

using namespace std;

int main() {
    char alphabet[] = {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};
    int key, textLenght, i1; string text;
    cout << "Wprowadz klucz: "; cin >> key;
    cout << "Wprowadz tresc do zaszyfrowania: "; cin >> text;
    textLenght = text.length();
    for (int i = 0; i <= textLenght; i++) {
        text[i] = alphabet[(i1+key)%26];
    }
    cout << "Wykonano szyfrowanie. Wynik to: " << text;
};