#include <bits/stdc++.h>

std::pair<std::vector<int>, std::vector<int>> linear_sieve(int n) {
	std::vector<int> lf(n + 1, 0), pr;
	for (int i = 2; i <= n; i++) {
		if (lf[i] == 0) {
			lf[i] = i;
			pr.push_back(i);
		}
		for (int j = 0; j < (int)pr.size() && pr[j] <= lf[i] && i * pr[j] <= n; j++)
			lf[i * pr[j]] = pr[j];
	}
	return make_pair(lf, pr);
}

int main() {
	std::freopen("../least-factor.txt", "w", stdout);
	std::ios_base::sync_with_stdio(false);

	int n = 10'000'000;
	std::vector<int> lf;
	std::tie(lf, std::ignore) = linear_sieve(n);
	for (int i = 1; i <= n; i++)
		std::cout << lf[i] << '\n';
}