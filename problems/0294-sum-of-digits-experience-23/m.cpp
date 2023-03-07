#include <bits/stdc++.h>
#include <atcoder/modint>

using mint = atcoder::static_modint<1'000'000'000>; 

template<typename T, size_t N>
std::array<std::array<T, N>, N> operator*(
	const std::array<std::array<T, N>, N> &a, 
	const std::array<std::array<T, N>, N> &b) {
	std::array<std::array<T, N>, N> c{};
	for (int i = 0; i < N; i++) 
		for (int k = 0; k < N; k++)
			for (int j = 0; j < N; j++) 
				c[i][j] += a[i][k] * b[k][j];
	return c;
}

int main() {
	const int n = 23;
	const int c = n * (n + 1);
	const long long p = 3'138'428'376'721;

	const auto b = [&](int s, int m) { return s * n + m; };

	std::array<std::array<mint, c>, c> t{};
	for (int s = 0; s <= n; s++) 
		for (int m = 0; m < n; m++)
			for (int d = 0; d < 10 && s + d <= n; d++)
				t[b(s + d, (m * 10 + d) % n)][b(s, m)]++;
	std::array<std::array<mint, c>, c> r{};
	for (int i = 0; i < c; i++)
		r[i][i] = 1;
	for (long long k = p; k > 0; k /= 2) {
		if (k % 2 == 1)
			r = r * t;
		t = t * t;
	}

	std::ofstream df("answer.txt");
	assert(df);
	df << r[b(n, 0)][0] << '\n';
	df.close();
}