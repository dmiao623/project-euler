#include <bits/stdc++.h>
#include "../../util/cmd-line-parser.hpp"

std::vector<int> num_squared_divisors(int n) {
	std::ifstream df("../sequences/least-factor.txt");
	std::vector<int> lf(n + 1);
	if (df) {
		for (int i = 1; i <= n; i++)
			df >> lf[i];
		df.close();
	}

	std::vector<int> f(n + 1), g(n + 1), h(n + 1);
	f[1] = 1;
	for (int i = 2; i <= n; i++) {
		int k = i / lf[i];
		if (lf[k] == lf[i]) {
			g[i] = g[k];
			h[i] = h[k] + 1;
		} else {
			g[i] = k;
			h[i] = 1;
		}
		f[i] = f[g[i]] * (2 * h[i] + 1);
	}
	return f;
}

int main(int argc, char *argv[]) {
	auto stime = std::chrono::high_resolution_clock::now();

	auto _n = get_arg(argv, argv + argc, "-n");
	int n = _n == "" ? 100'000'000 : std::stoi(_n);
	std::string fpath = get_arg(argv, argv + argc, "-f");
	assert(fpath != "");
	auto _plen = get_arg(argv, argv + argc, "-p");
	int plen = std::min(n, _plen == "" ? 10 : std::stoi(_plen));
	
	std::cout << "terms  : " << n << '\n';
	std::cout << "file   : " << fpath << '\n';

	auto f = num_squared_divisors(n);

	std::ofstream of(fpath);
	for (int i = 1; i <= n; i++)
		of << f[i] << '\n';
	of.close();

	std::cout << "prev   : [";
	for (int i = 1; i < plen; i++)
		std::cout << f[i] << (i == plen - 1 ? ", ...]\n" : ", ");

	auto etime = std::chrono::high_resolution_clock::now();
	auto time = std::chrono::duration_cast<std::chrono::seconds>(etime - stime).count();
	std::cout << "time   : " << time << " seconds\n";
}