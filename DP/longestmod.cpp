#include <bits/stdc++.h>
#define max_n 1015
#define mod 1000000007
using namespace std;
int n;
long long a[max_n];
long long ans = 1;
long long sum = 0;
long long q_mod(long long a, long long b)
{
    long long res = 1;
    while (b)
    {
        if (b & 1)
        {
            res = ((res % mod) * a) % mod;
        }
        a = (a * a) % mod;
        b >>= 1;
    }
    return res;
}
long long fac[max_n];
void ini()
{
    fac[0] = 1;
    for (int i = 1; i < max_n; i++)
    {
        fac[i] = ((fac[i - 1] % mod) * i) % mod;
    }
}
long long inv(long long a)
{
    return q_mod(a, mod - 2);
}
long long comb(int n, int k)
{
    if (k > n)
        return 0;
    return (fac[n] * inv(fac[k]) % mod * inv(fac[n - k]) % mod) % mod;
}
int main()
{
    ini();
    // cout << comb(3,1) << endl;
    cin >> n;
    for (int i = 0; i < n; i++)
    {
        cin >> a[i];
        sum += a[i];
    }
    for (int i = n - 1; i >= 0; i--)
    {
        ans = (ans % mod * (comb(sum - 1, a[i] - 1) % mod)) % mod;
        sum -= a[i];
    }
    cout << ans << endl;
    return 0;
}