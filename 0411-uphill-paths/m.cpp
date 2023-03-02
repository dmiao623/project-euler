#include <bits/stdc++.h>

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
			tree[i] = std::max(tree[i], v);
	}

	T query(int i) {
		T ret = T();
		for (i++; i; i -= i & -i)
			ret = std::max(ret, tree[i]);
		return ret;
	}
};

int S(int n) {
	std::vector<std::pair<int, int>> a(2 * n + 1);
	int cx = 1 % n, cy = 1 % n;
	std::map<int, int> my;
	for (int i = 0; i <= 2 * n; i++) {
		a[i] = {cx, cy};
		my[cy] = 0;
		cx = cx * 2 % n;
		cy = cy * 3 % n;
	}
	std::sort(a.begin(), a.end());
	a.resize(std::unique(a.begin(), a.end()) - a.begin());
	int q = 0;
	for (auto &[k, v] : my)
		v = q++;
	fenwick_tree<int> s(q);
	int ans = 0;
	for (auto [x, y] : a) {
		y = my[y];
		int t = s.query(y) + 1;
		ans = std::max(ans, t);
		s.update(y, t);
	}
	return ans;
}

int main() {
	long long ans = 0;
	for (int k = 1; k <= 30; k++) {
		int t = S(k * k * k * k * k);
		ans += t;
	}
	std::freopen("answer.txt", "w", stdout);
	std::cout << ans << '\n';
}