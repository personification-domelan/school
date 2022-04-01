#include <iostream>
#include <time.h>
#include <vector>
#include <queue>
#include <stack>

using namespace std;

struct Zwierze {
    private:
        int typ, rozmiar;
        bool miesozerny;

    public:
        Zwierze() {
            typ = rand()%10+1;
            rozmiar = rand()%16+1;
            miesozerny = typ<5?true:false;
        }
        
        void wyswietl(){
            cout << typ << " | " << rozmiar << " | " << (miesozerny?"Tak":"Nie") << endl;
        }

        int getTyp() {return typ;}
        int getRozmair() {return rozmiar;}
        int getMiesozerny() {return miesozerny;}
};

void fill(vector <Zwierze> &vector, int length) {
    for (int i = 0; i < length; i++) {
        Zwierze tempZwierze; 
        vector.push_back(tempZwierze);
        }
};

void flood(vector <Zwierze> &vector) {
    cout << "No. | Typ | Rozmiar | Miesozerny\n";
    for (int i = 0; i < vector.size(); i++) {
        cout << i+1 << ". ";
        vector[i].wyswietl();
    }
};

int findBiggest(vector <Zwierze> &vector) {
    int max = vector[0].getRozmair(), index;
    for (int i = 0; i < vector.size(); i++) {
        max<vector[i].getRozmair()?max=vector[i].getRozmair(),index=i:max=max;
    }
    return index;
}

struct zoo {
    private:
        vector <Zwierze> v_z;
        queue <Zwierze> q_z_m;
        stack <Zwierze> s_z_r;
    public: 
        void create(int len) {
            fill(v_z, len);            
        }
        
        void wyswietl() {
            flood(v_z);
        }

        int liczba_rodzaju(bool type /*0 - nie miesozerne, 1 - mieso*/) {
            int temp = 0;
            for (int i = 0; i < v_z.size(); i++) {
                if (v_z[i].getMiesozerny()) temp++;
            }
            return type?temp:v_z.size()-temp;
        }

        void generuj_kolejki() {
            for (int i = 0; i < v_z.size(); i++) {
                v_z[i].getMiesozerny()?q_z_m.push(v_z[i]):s_z_r.push(v_z[i]);
            }
        }

        void nakarm_roslinozerne() {
            int len = s_z_r.size();
            for (int i = 0; i < len; i++) {
                cout << "Nakarmiono: " << s_z_r.top().getTyp() << " | " << s_z_r.top().getRozmair() << endl;
                s_z_r.pop();
            }
        }

        void nakarm_miesonozerne() {
            int len = q_z_m.size();
            for (int i = 0; i < len; i++) {
                cout << "Nakarmiono: " << q_z_m.front().getTyp() << " | " << q_z_m.front().getRozmair() << endl;
                q_z_m.pop();
            }
        }

        void wyswietl_rozmiary() {
            int lenq = q_z_m.size(), lens = s_z_r.size();
            cout << "Miesozerne: ";
            for (int i = 0; i < lenq; i++) {
                cout << q_z_m.front().getRozmair() << ", ";
                q_z_m.pop();
            }
            cout << "\nRoslinozerne: ";
            for (int i = 0; i < lens; i++) {
                cout << s_z_r.top().getRozmair() << ", ";
                s_z_r.pop();
            }
        }

        void wyczysc_stos() {
            int len = q_z_m.size();
            for (int i = 0; i < len; i++) {q_z_m.pop();}
            cout << "\nWYCZYSZCZONO STOS\n";
        }

        void wyczysc_kolejke() {
            int len = s_z_r.size();
            for (int i = 0; i < len; i++) {s_z_r.pop();}
            cout << "\nWYCZYSZCZONO KOLEJKE\n";
        }
};


int main() {
    srand(time(NULL));
    // int tableLength;
    // cout << "Podaj wielkosc tablicy: "; cin >> tableLength;
    // vector <Zwierze> tab;
    // fill(tab, tableLength);
    // flood(tab);
    // int index = findBiggest(tab);
    // cout << "\n\nNajwieksze jest: " << (index+1) << ". "; tab[index].wyswietl();
    zoo zoo;
    zoo.create(10); 
    zoo.generuj_kolejki();
    zoo.wyswietl();
    zoo.wyczysc_kolejke();
    zoo.wyczysc_stos();
    return 0;
};