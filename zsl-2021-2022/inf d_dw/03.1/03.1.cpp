#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main()
{
    fstream file;
    string name;
    for (;;) {
        cout << "Podaj imie: "; getline(cin, name); cout << endl;
        if (name == "!command exit") { return 0; }
        string content;
        file.open("users.txt", ios_base::in);
            getline(file, content);
            while (!file.eof())
            {
                cout << content << endl;
                getline(file, content);
            }
        file.close();
        file.open("users.txt", ios_base::out | ios_base::app);
            file << name << endl;
        file.close();
        getchar();
    }
}