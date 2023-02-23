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
	std::freopen("../primes.txt", "w", stdout);
	std::ios_base::sync_with_stdio(false);

	int n = 10'000'000;
	int p = 179'424'673;
	std::vector<int> pr;
	std::tie(std::ignore, pr) = linear_sieve(p);
	assert((int)pr.size() == n);
	for (int p : pr)
		std::cout << p << '\n';
}