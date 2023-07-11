#include <bits/stdc++.h>
#include <atcoder/modint>
#include <local/debug>

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
		T ret = T();
		for (i++; i; i -= i & -i)
			ret += tree[i];
		return ret;
	}

	T query(int l, int r) { return query(r) - query(l - 1); }
};

using mint = atcoder::modint1000000007;

int solve(int n=1'000'000, int a0=153, int z = 10'000'019) {
	std::vector<int> aa(n);
	aa[0] = a0;
	for (int i = 1; i < n; i++) 
		aa[i] = (long long)aa[i-1]*a0%z;
	std::map<int, int> m;
	for (int x : aa)
		m[x] = 0;
	int mc = 0;
	for (auto &[k, v] : m)
		v = mc++;
	std::vector<int> a(aa);
	for (int &x : a)
		x = m[x];

	fenwick_tree<mint> bit1(n), bit2(n);
	std::vector<mint> b(n), c(n), d(n), p(n), q(n), r(n);

	bit1.init(mc);
	bit2.init(mc);
	for (int i = 0; i < n; i++) {
		b[i] = bit1.query(0, a[i] - 1);
		p[i] = bit2.query(0, a[i] - 1) + aa[i] * b[i];
		bit1.update(a[i], 1);
		bit2.update(a[i], aa[i]);
	}

	bit1.init(mc);
	bit2.init(mc);
	for (int i = 0; i < n; i++) {
		c[i] = bit1.query(0, a[i] - 1);
		q[i] = bit2.query(0, a[i] - 1) + aa[i] * c[i];
		bit1.update(a[i], b[i]);
		bit2.update(a[i], p[i]);
	}

	bit1.init(mc);
	bit2.init(mc);
	for (int i = 0; i < n; i++) {
		d[i] = bit1.query(0, a[i] - 1);
		r[i] = bit2.query(0, a[i] - 1) + aa[i] * d[i];
		bit1.update(a[i], c[i]);
		bit2.update(a[i], q[i]);
	}

	return std::accumulate(r.begin(), r.end(), mint(0)).val();
}

int main() {
	int ans = solve();
	std::cout << ans << '\n';
	std::freopen("answer.txt", "w", stdout);
	std::cout << ans;
}