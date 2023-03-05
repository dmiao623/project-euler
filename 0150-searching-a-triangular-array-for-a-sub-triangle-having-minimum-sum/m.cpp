#include <bits/stdc++.h>

std::vector<long long> linear_congruential_generator(int n) {
	const long long m = 615949, b = 797807, z = 1 << 20, d = 1 << 19;
	long long t = 0;
	std::vector<long long> a(n);
	for (int i = 0; i < n; i++) {
		t = (m * t + b) % z;
		a[i] = t - d;
	}
	return a;
}

int main() {
	const int n = 1'000;
	const int m = n * (n + 1) / 2;

	auto a = linear_congruential_generator(m);

	int c = 0;
	std::vector b(n + 1, std::vector<long long>(n + 1, 0));
	for (int i = 1; i <= n; i++) 
		for (int j = 1; j <= i; j++) 
			b[i][j] = a[c++];
	std::vector p(n + 1, std::vector<long long>(n + 1, 0));
	for (int i = 1; i <= n; i++) 
		for (int j = 1; j <= n; j++) 
			p[i][j] = b[i][j] + p[i - 1][j] + p[i][j - 1] - p[i - 1][j - 1];
	auto q = [&p](int x1, int y1, int x2, int y2) { 
		return p[x2][y2] - p[x1 - 1][y2] - p[x2][y1 - 1] + p[x1 - 1][y1 - 1]; 
	};

	std::vector f(n + 1, std::vector<long long>(n + 1, 0));
	for (int i = 1; i <= n; i++) 
		for (int j = 1; j <= i; j++) 
			f[i][j] = f[i - 1][j - 1] + q(i, 1, i, j);
	long long ans = LLONG_MAX;
	for (int i = 1; i <= n; i++)
		for (int j = 1; j <= i; j++)
			for (int k = 0; k < j; k++) 
				ans = std::min(ans, f[i][j] - f[i - j + k][k] - q(i - j + k + 1, 1, i, k));
	std::freopen("answer.txt", "w", stdout);
	std::cout << ans << '\n';
}