#include <bits/stdc++.h>
#include <atcoder/modint>

namespace std {

template<class Fun>
class y_combinator_result {
	Fun fun_;
public:
	template<class T>
	explicit y_combinator_result(T &&fun): fun_(std::forward<T>(fun)) {}

	template<class ...Args>
	decltype(auto) operator()(Args &&...args) {
		return fun_(std::ref(*this), std::forward<Args>(args)...);
	}
};

template<class Fun>
decltype(auto) y_combinator(Fun &&fun) {
	return y_combinator_result<std::decay_t<Fun>>(std::forward<Fun>(fun));
}

} // namespace std

using mint = atcoder::static_modint<1000000000>;

mint E(int n, mint l, mint a, mint b, mint c) {
	std::array<mint, 3> pos = {a, b, c};
	std::vector<std::array<std::array<mint, 3>, 3>> mem(n + 1);
	for (int i = 0; i <= n; i++)
		for (int j = 0; j < 3; j++)
			for (int k = 0; k < 3; k++)
				mem[i][j][k] = 0;

	auto dis = [&](int a, int b) -> mint {
		mint x, y;
		if (a < b)
			x = pos[a], y = pos[b];
		else
			x = l - pos[a] + 1, y = l - pos[b] + 1;
		return (y - x) * (y + x - 2);
	};

	return std::y_combinator([&](auto self, int n, int a, int b, int c) -> mint {
		if (mem[n][a][b] != 0)
			return mem[n][a][b];
		if (n == 1) 
			mem[n][a][b] = dis(a, b);
		else 
			mem[n][a][b] = self(n - 1, a, c, b) + dis(c, a) + dis(a, b) + dis(b, c) + self(n - 1, c, b, a);
		return mem[n][a][b];
	})(n, 0, 2, 1) + dis(1, 0);
}

int main() {
	std::freopen("answer.txt", "w", stdout);
	mint ans = 0;
	for (int n = 1; n <= 10000; n++) 
		ans += E(n, mint(10).pow(n), mint(3).pow(n), mint(6).pow(n), mint(9).pow(n));
	std::cout << ans << '\n';
}