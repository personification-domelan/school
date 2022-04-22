#include <iostream>
#include <vector>
#include <queue>
#include <stack>
#include <time.h>

using namespace std;

struct SAMOLOT {
    private:
        int size, type, range;
    public:
        SAMOLOT() {
            size = rand()%11;
            type = rand()%6;
            range = rand()%201;
        }
        void showData() {
            cout << "Wielkosc: " << size << ", Typ: " << type << ", Zasieg: " << range << endl;
        }
        void increaseRange(int add) {range+=add;}
        void decreaseRange(int rm) {(range-rm)>0?range-=rm:range=0;}
        SAMOLOT(int s, int t, int r) {size = s; type = t; range = r;}
        int getRange() {return range;}
        int getSize() {return size;}
};

int main() {
    srand(time(NULL));
    int max=0, sum=0;
    vector<SAMOLOT> base;
    for(int i=0; i<15; i++) {base.push_back(SAMOLOT());}
    base.push_back(SAMOLOT(8,0,0));
    base[0].decreaseRange(50);
    for(int i=0; i<base.size(); i++) {if (max<base[i].getRange()) {max=base[i].getRange();};}
    cout << "Maksymalny dystans dla wygenerowanych samolotow wynosi: " << max << endl;
    for(int i=0; i<base.size(); i++) {sum+=base[i].getSize();}; int avg = (sum/base.size());
    cout << "Sredni rozmiar wygenerowanych samolotow wynosi: " << avg << endl;
    stack<SAMOLOT> small;
    for(int i=0; i<base.size(); i++) {if (base[i].getRange()<25) {small.push(base[i]);}}
    for(int i=0; i<base.size();) {if (base[i].getRange()<2) {base.erase(base.begin()+i);} else {i++;}}
    for(int i=0; i<small.size(); i++) {small.top().showData(); small.pop();}
    return 0;
}