#include <iostream>
#include <cstdlib>
#include <time.h>

using namespace std;

struct Uczen {
private:        //private = tylko do odczytania w zakresie tej struktury
    int numer;
    double srednia;
    int oceny_koncowe[6];
    bool zdal;

public:         //public = dostępne dla wszytkich używających tej struktury
    Uczen() {
        numer = rand() % 1000 + 1000;
        srednia = rand() % 6 + 1;
        oceny();
        oblicz_srednia();
        czy_zdal();
    }       //ustawianie domyślnych wartości poprzez przypisanie wartości i wywołania metod (musszą się znajdować w obrębie danej struktury) które przypiszą wartości

    void wyswietl_informacje() {
        cout << "Uczen o numerze " << numer << " uzyskal srednia " << srednia << endl;
    }

    void zmien_srednia(double a) {
        srednia = a;
    }

    void oceny() {
        for (int i = 0; i < 6; i++) {
            oceny_koncowe[i] = rand() % 6 + 1;
        }
    }       //generator ocen końcowych

    void oblicz_srednia() {
        double s = 0;
        for (int i = 0; i < 6; i++) {
            s += oceny_koncowe[i];
        }
        srednia = s / 6;
    }

    void czy_zdal() {
        if (srednia > 1.5) { zdal = 1; } else { zdal = 0; }
    }

    void wyswietl_koncowe() {
        cout << "Oceny skladowe:";
        for (int i = 0; i < 6; i++)
        {
            cout << " " << oceny_koncowe[i];
        }
        cout << ", srednia: " << srednia << endl;
    }

    //poniższe są utworzone by można było odczytać wartości zmiennych dla danej struktury, ale poprzez zastosowanie private na utworzenie wartości nie można ich edytować z zewnątrz

    int give_numer() {
        return numer;
    }

    double give_srednia() {
        return srednia;
    }

    bool give_zdal() {
        return zdal;
    }
};

struct Klasa {
    Uczen uczniowie[20];        //w tym przypadku wymusza się utworzonenie 20 obiektów o struktórze Uczen podczas tworzenia nowego obiektu o tej struktórze (NIE USTAWIASZ TEGO W WARTOŚCIACH PRZYPISYWANYCH PODCZAS TWORZENIA STRUKTÓRY)
    double srednia_klasy;

    Klasa() {
        oblicz_srednia_klasy();
    }       //ustawianie domyślnej wartości poprzez wywołanie metody [NIE PAMIĘTAM JAK TO ON NAZYWAŁ] (musi się znajdować w obrębie danej struktury)

    void oblicz_srednia_klasy() {
        double s = 0;
        for (int i = 0; i < 20; i++) {
            s += uczniowie[i].give_srednia();
        }
        srednia_klasy = s / 20;
    }

    void wyswietl_srednia() {
        cout << "Klasa osiagnela srednia: " << srednia_klasy << endl;
    }

    void wyswietl_oceny() {
        for (int i = 0; i < 20; i++) {
            uczniowie[i].wyswietl_koncowe();
        }
    }
};

/*void zmien_numer(Uczen &a, int b) {
    a.give_numer() = b;
}*/         //po edycji struktóry uczeń poprzez "blokadę" (private/public) z jakiegoś powodu ta funkcja przestaje działać, nw dlaczego

void wyswietl_tab(Uczen tab[], int n) {
    for (int i = 0; i < n; i++) {
        tab[i].wyswietl_informacje();
    }
}

void max_punkty(Uczen a[], int n) {
    Uczen m = a[0];
    for (int i = 1; i < n; i++) {
        if (m.give_srednia() < a[i].give_srednia()) { m = a[i]; };
    }
    cout << "Najlepsza srednia osiagnal "; m.wyswietl_informacje();
}

void battle(Klasa a, Klasa b) {
    if (a.srednia_klasy > b.srednia_klasy) {
        cout << "Klasa pierwsza ma wiecej punktow niz druga." << endl;
    } else {
        cout << "Klasa pierwsza ma mniej punktow niz druga." << endl;
    }
}

int main() {
    srand(time(NULL));
    /*
    //UTWORZENIE OBIEKTU O STRUKTÓRZE UCZEN I WYKONYWANIE METOD ZAPISANYCH DLA TEJ STURKTÓRY
    Uczen u1;
    u1.wyswietl_informacje();
    u1.zmien_srednia(3.12);
    u1.wyswietl_informacje();
    zmien_numer(u1, 12);
    u1.wyswietl_informacje();*/
    
    /*Uczen uczniowie[10];
    for (int i = 0; i < 10; i++) {
        uczniowie[i].wyswietl_informacje();
    };
    uczniowie[6].zmien_srednia(5.1);
    zmien_numer(uczniowie[6], 20);
    uczniowie[6].wyswietl_informacje();*/

    /*int n = sizeof(uczniowie) / sizeof(uczniowie[0]);
    wyswietl_tab(uczniowie, n);
    max_punkty(uczniowie, n);
    uczniowie[2].wyswietl_koncowe();*/

    //ZABAWA NA DWÓCH OBIEKTACH O TEJ SAMEJ STRÓKTÓRZE
    Klasa g;
    //g.wyswietl_srednia();
    //g.wyswietl_oceny();
    Klasa j;
    //j.wyswietl_srednia();
    //j.wyswietl_oceny();

    //PORÓWNYWANIE OBIEKTU G I J O STRUKTÓRZE KLASA
    battle(g, j);
};