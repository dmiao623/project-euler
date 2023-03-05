#include <bits/stdc++.h>

int main() {
	std::freopen("../num-divisors.txt", "w", stdout);
	std::ios_base::sync_with_stdio(false);
	std::cin.tie(NULL);

	int n = 10'000'000;

	std::vector<int> lf(n + 1);
	std::freopen("../least-factor.txt", "r", stdin);
	for (int i = 1; i <= n; i++)
		std::cin >> lf[i];

	std::vector<int> f(n + 1), g(n + 1), h(n + 1);
	std::cout << (f[1] = 1) << '\n';
	for (int i = 2; i <= n; i++) {
		int k = i / lf[i];
		if (lf[k] == lf[i]) {
			g[i] = g[k];
			h[i] = h[k] + 1;
		} else {
			g[i] = k;
			h[i] = 1;
		}
		f[i] = f[g[i]] * (h[i] + 1);
		std::cout << f[i] << '\n';
	}
}