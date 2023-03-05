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

template<typename T>
class fenwick_tree {
	int n;
	std::vector<T> tree;

public:
	fenwick_tree() = default;

	fenwick_tree(int _n) { init(_n); }

	void init(int _n) {
		n = _n;
		tree.assign(n + 1, T());
	}

	void update(int i, T v) {
		for (i++; i <= n; i += i & -i)
			tree[i] += v;
	}

	T query(int i) {
		if (i < 0)
			return T();
		T ret = T();
		for (i++; i; i -= i & -i)
			ret += tree[i];
		return ret;
	}

	T query(int l, int r) { return query(r) - query(l - 1); }
};

int main() {
	const int n = 60'000'000;
	const long long z = 1'000'000'000'000'000'000;

	std::vector<int> lf;
	std::tie(lf, std::ignore) = linear_sieve(n + 1);

	std::vector<int> f(n + 2), g(n + 2), h(n + 2), p2(n + 2);
	f[1] = 1;
	for (int i = 2; i <= n + 1; i++) {
		int k = i / lf[i];
		if (lf[k] == lf[i]) {
			g[i] = g[k];
			h[i] = h[k] + 1;
		} else {
			g[i] = k;
			h[i] = 1;
		}
		p2[i] = p2[k] + (lf[i] == 2);
		f[i] = f[g[i]] * (h[i] + 1);
	}

	std::map<long long, int> mp;
	std::vector<long long> df(n + 1);
	for (int i = 1; i <= n; i++) {
		df[i] = (long long)f[i] * f[i + 1] / (std::max(p2[i], p2[i + 1]) + 1) * std::max(p2[i], p2[i + 1]);
		mp[df[i]] = 0;
	}

	int m = 0;
	for (auto &[k, v] : mp)
		v = m++;
	std::vector<int> a(n);
	for (int i = 1; i <= n; i++)
		a[i - 1] = mp[df[i]];

	fenwick_tree<int> bit(m);
	std::vector<int> x(n), y(n);
	for (int i = 0; i < n; i++) {
		x[i] = bit.query(m - a[i] - 2);
		bit.update(m - a[i] - 1, 1);
	}
	bit.init(m);
	for (int i = n - 1; i >= 0; i--) {
		y[i] = bit.query(a[i] - 1);
		bit.update(a[i], 1);
	}

	long long ans = 0;
	for (int i = 0; i < n; i++) 
		ans = (ans + (__int128)x[i] * y[i] % z) % z;

	std::freopen("answer.txt", "w", stdout);
	std::cout << ans << '\n';
}