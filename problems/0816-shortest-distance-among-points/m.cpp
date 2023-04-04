#include <bits/stdc++.h>

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

template<typename T>
struct point { T x, y; };

template<typename T>
T dis(const point<T> &p, const point<T> &q) { return (p.x - q.x) * (p.x - q.x) + (p.y - q.y) * (p.y - q.y); }

int main() {
	const int n = 2'000'000;
	const long long c0 = 290797, m = 50515093;

	std::vector<point<long long>> p(n);
	long long c = c0;
	for (int i = 0; i < n; i++) {
		long long x = c;
		c = c * c % m;
		long long y = c;
		c = c * c % m;
		p[i] = {x, y};
	}

	std::sort(p.begin(), p.end(), [](const auto &a, const auto &b) {
		return a.x < b.x;
	}); 

	long long d2 = std::y_combinator([&](auto self, int l, int r) -> long long {
		if (l == r) 
			return LLONG_MAX;
		int m = (l + r) / 2;
		long long mx = p[m].x;
		long long d = std::min(self(l, m), self(m + 1, r));
		std::vector<point<long long>> cp, pl, pr;
		cp.reserve(r - l + 1);
		for (int ii = l, jj = m + 1; ii <= m || jj <= r;) {
			if (ii > m || (jj <= r && p[jj].y <= p[ii].y)) {
				auto k = p[jj++];
				cp.push_back(k);
				if ((mx - k.x) * (mx - k.x) <= d) {
					for (auto q : pr)
						d = std::min(d, dis(k, q));
					pl.push_back(k);
					if (pl.size() > 4)
						pl.erase(pl.begin());
				}
			} else {
				auto k = p[ii++];
				cp.push_back(k);
				if ((k.x - mx) * (k.x - mx) <= d) {
					for (auto q : pl)
						d = std::min(d, dis(k, q));
					pr.push_back(k);
					if (pr.size() > 4)
						pr.erase(pr.begin());
				}
			}
		}
		std::copy(cp.begin(), cp.end(), p.begin() + l); 
		return d;
	})(0, n - 1);

	std::cout << std::fixed << std::setprecision(9) << sqrtl(d2) << '\n';

}