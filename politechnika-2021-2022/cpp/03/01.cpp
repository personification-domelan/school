#include <iostream>

using namespace std;

int main() {
    int V[] = {1,3,8,1,2}, W[] = {7,2,4,1,3}, len = sizeof(V)/sizeof(V[0]), weight, currentWeight = 0, currentValues = 0, tempInt;
    float *U = new float[len], tempFloat;
    for (int i = 0; i < (sizeof(V) / sizeof(V[0])); i++){
        U[i] = V[i]/W[i];
    }
    for (int j = 0; j < (sizeof(U) / sizeof(U[0])); j++){    
        for (int i = 0; i < (sizeof(U) / sizeof(U[0])); i++){
            if (U[i]<U[i+1]){
                tempFloat = U[i]; U[i] = U[i+1]; U[i+1] = tempFloat;
                tempInt = W[i]; W[i] = W[i+1]; W[i+1] = tempInt;
                tempInt = V[i]; V[i] = V[i+1]; V[i+1] = tempInt;
                tempFloat = 0, tempInt = 0;
            }
        }
    }
    cout << "Podaj wielkosc plecaka: "; cin >> weight;
    for (int i = 0; i < 5;){
        cout << i << ". " << V[i] << " | " << W[i] << " | " << currentValues << " | " << currentWeight << endl;
        if (weight >= (currentWeight + W[i])){
            currentWeight += W[i];
            currentValues += V[i];
        } else i++;
    }
    cout << "Aktualnie w plecaku jest: " << currentValues << endl;
    return 0;
}