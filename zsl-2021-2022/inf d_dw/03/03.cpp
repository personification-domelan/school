#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main()
{
    fstream f1; //ogólny
    ofstream f2; //zapis
    ifstream f3; //odczyt
    f1.open("f1.txt", ios_base::out | ios_base::app); //do zapisu na końcu
    //ios_base::in - odczyt; ios_base::binary - tryb binarny
    f1 << "Hello World!" << endl;
    f1.close();
    f3.open("f1.txt");
    string s1;
    //while (f3 >> s1)cout << s1 << endl;
    getline(f3, s1);
    while (!f3.eof()) {
        cout << s1 << endl;
        getline(f3, s1);
    }
    f3.close();
    return 0;
}