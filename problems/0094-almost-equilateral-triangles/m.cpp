#include <bits/stdc++.h>

bool psq(long long x) {
	long long k = (sqrtl(x) + 0.5);
	return k * k == x;
}

int main() {
	long long b = 1'000'000'000;
	long long c = b / 3 + 2;
	long long ans = 0;
	for (long long k = 1; k <= c; k += 2) {
		if (3 * k + 1 <= b) {
			long long n = (((3 * k + 4) * k - 2) * k - 4) * k - 1;
			std::cout << n << '\n';
			if (n & 15 == 0 && psq(n >> 4))
				ans += 3 * k + 1;
		}
		if (3 * k - 1 <= b) {
			long long n = (((3 * k - 2) * k - 4) * k + 2) * k + 1;
			if (n & 15 == 0 && psq(n >> 4))
				ans += 3 * k - 1;
		}
	}
	std::cout << ans << '\n';
}