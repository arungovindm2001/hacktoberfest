
#include <bits/stdc++.h>
using namespace std;

void max1(char arr[], int k)
{

    vector<int> sum(k, 1);
    for (int i = 1; i < k; i++)
    {
        if (arr[i - 1] < arr[i])
        {
            sum[i] = sum[i - 1] + 1;
        }
    }
    cout << accumulate(sum.begin(), sum.end(), 0);
}

int main()
{
    int t, n;
    cin >> t;
    for (int i = 0; i < t; i++)
    {
        cin >> n;
        char arr[n];
        for (int j = 0; j < n; j++)
        {
            char inp;
            cin >> inp;
            arr[j] = inp;
        }
        max1(arr, n);
    }
    return 0;
}