#include <bits/stdc++.h>
#include <atcoder/modint>

using mint = atcoder::static_modint<100'000'000>;

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

int main() {
	const int n = 20'000'000;

	std::vector<int> tot(n + 1);
	std::ifstream df("../../library/sequences/euler-totient.txt");
	assert(df);
	for (int i = 1; i <= n; i++)
		df >> tot[i];
	df.close();

	mint ans = 0;
	fenwick_tree<mint> bit(n + 1);
	for (int i = 6; i <= n; i++) {
		mint c = i == 6 ? 1 : bit.query(tot[i]);
		ans += c;
		bit.update(tot[i] + 1, c);
		bit.update(i, -c);
	}

	std::ofstream af("answer.txt");
	assert(af);
	af << ans << '\n';
	af.close();
}