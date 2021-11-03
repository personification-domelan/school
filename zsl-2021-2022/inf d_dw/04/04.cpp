#include <iostream>
#include <fstream>
#include <string>
#include <math.h>

using namespace std;

int main()
{
    fstream file;
    string con;
    int conint, a, tab[50], tab1[50], sum = 0;
    float avr;
    file.open("f1.txt", ios_base::out | ios_base::app);
    if (!!file.eof()) {
        for (int i = 0; i <= 20; i++) {
            file << i << endl;
        }
    }
    file.close();
    file.open("f1.txt", ios_base::in);
    getline(file, con);
    cout << "Dane z pliku f1.txt: " << endl;
    while (!file.eof()) {
        cout << con << endl;
        getline(file, con);
    }
    cout << endl << endl;
    file.close();
    file.open("f1.txt", ios_base::in);
    getline(file, con);
    a = 0;
    while (!file.eof()) {
        conint = stoi(con);
        if (conint % 7 == 0) {
            tab[a] = conint;
            a++;
        }
        getline(file, con);
    }
    file.close();
    file.open("f2.txt", ios_base::out | ios_base::app);
    if (file.eof()) {
        for (int i = 0; i < a; i++) {
            file << tab[i] << endl;
        }
    }
    file.close();
    file.open("f2.txt", ios_base::in);
    getline(file, con);
    a = 0;
    cout << "Dane z pliku f2.txt (dane z f1.txt podzielne przez 7 i niepodzielne przez 3): " << endl;
    while (!file.eof()) {
        conint = stoi(con);
        if (conint % 3 != 0) {
            tab1[a] = conint;
            cout << conint << endl;
            a++;
        }
        getline(file, con);
    }
    file.close();
    for (int i = 0; i < a; i++) {
        sum = sum + tab1[i];
    }
    avr = sum / a;
    cout << "Suma z f2.txt to: " << sum << "\nSrednia z f2.txt to: " << avr << endl;
    getchar();
    return 0;
}