#include <bits/stdc++.h>

std::string concat() { return ""; }

template<typename... Tp>
std::string concat(int x, Tp... tp) { return std::to_string(x) + concat(tp...); }

int main() {
	std::array<int, 10> P;
	std::iota(P.begin(), P.end(), 1);
	long long ans = 0;
	do {
		auto [a1, a2, a3, a4, a5, b1, b2, b3, b4, b5] = P;
		if (a1 == 10 || a2 == 10 || a3 == 10 || a4 == 10 || a5 == 10 || b1 > b2 || b1 > b3 || b1 > b4 || b1 > b5)
			continue;
		int s = b1 + a1 + a2;
		if (s == b2 + a2 + a3 && s == b3 + a3 + a4 && s == b4 + a4 + a5 && s == b5 + a5 + a1) {
			long long t = stoll(concat(b1, a1, a2, b2, a2, a3, b3, a3, a4, b4, a4, a5, b5, a5, a1));
			ans = std::max(ans, t);
		}
	} while (std::next_permutation(P.begin(), P.end()));
	std::freopen("answer.txt", "w", stdout);
	std::cout << ans << '\n';
}