#include <iostream>

using namespace std;

int sort(int array[], int n) {
	int t1, t2;
	for (int i = 0; i < n; i++)
	{
		cout << array[i] << ", ";
	}
	cout << endl;
	for (int i = 0; i < n; i++)
	{
		for (int i = 0; i < n-1; i++)
		{
			t1 = array[i]; t2 = array[i + 1];
			if (t1 > t2) { array[i] = t2; array[i + 1] = t1; }
		}
	}
	for (int i = 0; i < n; i++)
	{
		cout << array[i] << ", ";
	}
	getchar();
	return 0;
}

int main()
{
	int array[] = {7,13,21,2,9,5,0,7};
	int n = sizeof(array) / sizeof(array[0]);
	sort(array, n);
}