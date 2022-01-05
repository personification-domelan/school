
#include <bits/stdc++.h>
#include <string.h>
using namespace std;
#define RANGE 255

void sort_function(char tab1[])
{
    char output[strlen(tab1)];

    int count[RANGE + 1], i;
    memset(count, 0, sizeof(count));

    for (i = 0; tab1[i]; ++i) { ++count[tab1[i]]; }
    for (i = 1; i <= RANGE; ++i) { count[i] += count[i - 1]; }
    for (i = 0; tab1[i]; ++i) { output[count[tab1[i]] - 1] = tab1[i]; --count[tab1[i]]; }
    for (i = 0; tab1[i]; ++i) {
        tab1[i] = output[i];
    }
}

int main()
{
    char tab1[] = {};
    cin >> tab1;
    sort_function(tab1);
    cout << "Sorted:" << tab1;
    return 0;
}
/*
#include <algorithm>
#include <iostream>
#include <vector>
using namespace std;

void sortNumbers(vector<int>& tab2)
{
    int max = *max_element(tab2.begin(), tab2.end());
    int min = *min_element(tab2.begin(), tab2.end());
    int range = max - min + 1;

    vector<int> count(range), output(tab2.size());
    for (int i : tab2)
        count[i - min]++;

    for (int i = 1; i < count.size(); i++)
        count[i] += count[i - 1];

    for (int i = tab2.size() - 1; i >= 0; i--) {
        output[count[tab2[i] - min] - 1] = tab2[i];
        count[tab2[i] - min]--;
    }

    for (int i = 0; i < tab2.size(); i++)
        tab2[i] = output[i];
}

void printn(vector<int>& tab2)
{
    for (int i : tab2)
        cout << i << " ";
    cout << "\n";
}

int main()
{
    vector<int> tab2;
    int a;
    for (int i = 0; i < 10; i++)
    {
        cin >> a;
        tab2.push_back(a);
    }
    sortNumbers(tab2);
    printn(tab2);
    return 0;
} */
