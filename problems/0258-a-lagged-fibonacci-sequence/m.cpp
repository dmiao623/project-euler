#include <bits/stdc++.h>
#include <atcoder/modint>

using mint = atcoder::static_modint<20092010>;

const int N = 2000;
std::array<std::array<mint, N>, N> tr, pr, tp;

template<typename T, size_t N>
void mul(const std::array<std::array<T, N>, N> &a, const std::array<std::array<T, N>, N> &b) {
	for (int i = 0; i < N; i++)
		for (int j = 0; j < N; j++)
			tp[i][j] = 0;
	for (int i = 0; i < N; i++) 
		for (int k = 0; k < N; k++)
			for (int j = 0; j < N; j++) 
				tp[i][j] += a[i][k] * b[k][j];
}

int main() {
	clock_t str = clock();
	for (int i = 0; i < N; i++)
		for (int j = 0; j < N; j++)
			tr[i][j] = 0;
	tr[0][1998] = tr[0][1999] = 1;
	for (int i = 0; i < N - 1; i++) 
		tr[i + 1][i] = 1;
	for (int i = 0; i < N; i++)
		for (int j = 0; j < N; j++)
			pr[i][j] = (i == j);


	for (long long e = 1'000'000'000'000'000'000, i = 1; e > 0; e /= 2, i++) {
		std::cerr << "\nstep " << i << ":\n";
		if (e % 2 == 1)  {
			mul(pr, tr);
			pr = move(tp);
			std::cerr << "rmul: " << (float)(clock() - str) / CLOCKS_PER_SEC << '\n';
		}
		mul(tr, tr);
		tr = move(tp);
		std::cerr << "dmul: " << (float)(clock() - str) / CLOCKS_PER_SEC << '\n';
	}
	mint s = 0;
	for (int i = 0; i < N; i++)
		s += pr[N - 1][i];
	std::freopen("answer.txt", "w", stdout)
	std::cout << s << '\n';
}