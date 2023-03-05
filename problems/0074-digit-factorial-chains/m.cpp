#include <bits/stdc++.h>

std::array<long long, 10> F = {1, 1, 2, 6, 24, 120, 720, 5040, 40320, 362880};

long long N(long long x) {
	long long ret = 0;
	while (x > 0) {
		ret += F[x % 10];
		x /= 10;
	}
	return ret;
}

int main() {
	int n = 1'000'000;
	int ans = 0;
	for (int s = 1; s <= n; s++) {
		long long k = s;
		int ret = 1;
		std::set<int> vis{s};
		do {
			long long t = N(k);
			if (vis.contains(t))
				break;
			ret++, k = t;
			vis.insert(k);
		} while (true);
		if (ret == 60)
			ans++;
	}
	std::freopen("answer.txt", "w", stdout);
	std::cout << ans << '\n';
}