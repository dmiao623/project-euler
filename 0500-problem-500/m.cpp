#include <bits/stdc++.h>
#include <atcoder/modint>

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

using mint = atcoder::static_modint<500500507>;

int main() {
	int n = 500500;
	int b = 7376507;
	auto [lf, pr] = linear_sieve(b);
	assert((int)pr.size() == n);

	std::priority_queue<std::pair<long long, int>, std::vector<std::pair<long long, int>>, std::greater<std::pair<long long, int>>> pq;
	for (int p : pr)
		pq.emplace(p, p);
	mint ans = 1;
	for (int t = 0; t < n; t++) {
		auto [k, p] = pq.top(); pq.pop();
		long double d = (long double)k * k;
		if (d < 1e18)
			pq.emplace(k * k, p);
		ans *= k;
	}

	std::freopen("answer.txt", "w", stdout);
	std::cout << ans << '\n';
}