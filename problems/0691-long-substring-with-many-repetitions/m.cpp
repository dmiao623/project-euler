#include <bits/stdc++.h>
#include <atcoder/string>

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

long long solve(int n=5'000'000, int l=1, int r=5'000'000) {
	const double phi = 1.61803398874989484820458683436563;

	std::vector<int> a(n), b(n), c(n);
	a[0] = 0;
	for (int i = 0; i < n; i++) {
		if (2 * i < n)
			a[2 * i] = a[i];
		if (2 * i + 1 < n)
			a[2 * i + 1] = 1 - a[i];
		b[i] = int((i+1)/phi) - int(i/phi);
		c[i] = a[i] + b[i] - 2 * a[i] * b[i];
	}

	// dbg(a, b, c)

	int m = 2*n+1, s = 0;
	std::vector<std::array<int, 2>> nxt(m);
	std::vector<int> lnk(m), len(m), occ(m);

	int lst = s++;
	nxt[lst].fill(-1);
	lnk[lst] = -1;
	len[lst] = 0;
	for (int ch : c) {
		int cur = s++;
		nxt[cur].fill(-1);
		lnk[cur] = -1;
		len[cur] = len[lst] + 1;
		while (lst != -1 && nxt[lst][ch] == -1) {
			nxt[lst][ch] = cur;
			lst = lnk[lst];
		}
		if (lst == -1) {
			lnk[cur] = 0;
		} else {
			int tem = nxt[lst][ch];
			if (len[lst] + 1 == len[tem]) {
				lnk[cur] = tem;
			} else {
				int clo = s++;
				nxt[clo] = nxt[tem];
				lnk[clo] = lnk[tem];
				len[clo] = len[lst] + 1;
				while (lst != -1 && nxt[lst][ch] == tem) {
					nxt[lst][ch] = clo;
					lst = lnk[lst];
				}
				lnk[tem] = lnk[cur] = clo;
			}
		}
		lst = cur;
		occ[lst] = 1;
	}

	std::vector<std::vector<int>> t(s);
	for (int i = 1; i < s; i++)
		t[lnk[i]].push_back(i);
	std::vector<int> f(n+1);
	std::y_combinator([&](auto self, int u) -> int {
		for (int v : t[u])
			occ[u] += self(v);
		f[occ[u]] = std::max(f[occ[u]], len[u]);
		return occ[u];
	})(0);

	long long ans = f[r];
	for (int i = r-1; i >= l; i--) {
		f[i] = std::max(f[i], f[i+1]);
		ans += f[i];
	}

	return ans;
}

int main() {
	long long ans = solve();
	std::ofstream af("answer.txt");
	af << ans; 
	std::cout << ans << '\n';
}