#pragma GCC optimize("O3,unroll-loops")
#pragma GCC target("avx2,bmi,bmi2,lzcnt,popcnt")

#include <bits/stdc++.h>
#include <atcoder/maxflow>
#include <local/debug>

std::pair<std::vector<int>, std::vector<int>> sieve(int n) {
	std::vector<int> lf(n + 1, 0), pr;
	for (int i = 2; i <= n; i++) {
		if (lf[i] == 0) {
			lf[i] = i;
			pr.push_back(i);
		}
		for (int j = 0; j < (int)pr.size() && pr[j] <= lf[i] && pr[j] * i <= n; j++)
			lf[pr[j] * i] = pr[j];
	}
	return {lf, pr};
}

int N(std::set<int> div) {
	int n = (int)div.size();
	std::vector<int> vec(div.begin(), div.end());

	if (false && n <= 6) {
		int ret = 0;
		for (int m = 0; m < (1 << n); m++) {
			bool pos = true;
			for (int i = 0; i < n; i++) {
				for (int j = 0; j < n; j++) {
					if (i != j && (m >> i & 1) && (m >> j & 1) && vec[j] % vec[i] == 0) {
						pos = false;
						goto exit;
					}
				}
			}
			exit:
			if (pos) 
				ret = std::max(ret, __builtin_popcount(m));
		}
		return ret;
	} else {
		atcoder::mf_graph<int> g(2 * n + 2);
		int s = 2 * n, t = 2 * n + 1;
		for (int i = 0; i < n; i++)
			for (int j = 0; j < n; j++)
				if (i != j && vec[j] % vec[i] == 0)
					g.add_edge(i, j + n, 1);
		for (int i = 0; i < n; i++) {
			g.add_edge(s, i, 1);
			g.add_edge(i + n, t, 1);
		}
		int f = g.flow(s, t);
		return n - f;
	}	
}

int main() {
	int n = 1e8 + 1;
	auto [lf, pr] = sieve(n);
	std::vector<std::set<int>> div(n);

	div[1] = {1};
	long long ans = 1;
	for (int i = 2; i <= n; i++) {
		div[i] = div[i / lf[i]];
		for (int x : div[i / lf[i]])
			div[i].insert(x * lf[i]);
		int t = N(div[i]);
		ans += t;
		// std::cout << i << " : " << t << '\n';
		if (i % 10000 == 0)
			std::cout << i << '\n';
	}

	std::freopen("answer.txt", "w", stdout);
	std::cout << ans << '\n';
}