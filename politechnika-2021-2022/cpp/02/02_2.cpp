#include <iostream>

using namespace std;

int main() {
    char alphabet[] = {'A','B','C','D','E','F','G','H','I','J','K','L','M','N','O','P','Q','R','S','T','U','V','W','X','Y','Z'};
    int textLenght, i1, i2; string text, key;
    cout << "Wprowadz klucz: "; cin >> key;
    cout << "Wprowadz tresc do zaszyfrowania: "; cin >> text;
    textLenght = text.length();
    for (int i = 0; i <= textLenght; i++) {
        for (i1 = 0; alphabet[i1] != key[i%6]; i1++) {}
        for (i2 = 0; alphabet[i2] != text[i]; i2++) {}
        text[i] = alphabet[(i1+i2)%26];
    }
    cout << "Wykonano szyfrowanie. Wynik to: " << text;
};