#include <iostream>

using namespace std;

int main() {
    int W[] = {52,52,52,27,27,27,27,102,102,78,78,78,78,64,64,64,64,64,47,47,47,92,92,92,92}, H[] = {160,160,158,180,180,172,172,172,172,160,160,160,170,170,150,150,150,179,179,179,179}, len = sizeof(W)/sizeof(W[0]), weight = 900, currentWeight = 0, currentHeights = 0, tempInt;
    float *O = new float[len], tempFloat;
    for (int i = 0; i < (sizeof(H) / sizeof(H[0])); i++){
        O[i] = H[i]/W[i];
    }
    for (int j = 0; j < len; j++){    
        for (int i = 0; i < len; i++){
            if (O[i]<O[i+1]){
                tempFloat = O[i]; O[i] = O[i+1]; O[i+1] = tempFloat;
                tempInt = H[i]; H[i] = H[i+1]; H[i+1] = tempInt;
                tempInt = W[i]; W[i] = W[i+1]; W[i+1] = tempInt;
                tempFloat = 0, tempInt = 0;
            }
        }
    }
    for (int i = 0; i < len;i++){
        cout << i << ". " << H[i] << " | " << W[i] << " | " << currentHeights << " | " << currentWeight << endl;
        if(weight>(currentWeight+W[i+1])){
            currentHeights += H[i];
            currentWeight += W[i];
        }
    }
    cout << "Aktualnie w windzie sa osoby o lacznym wzroscie: " << currentHeights << endl;
    return 0;
}