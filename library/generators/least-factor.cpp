#include <bits/stdc++.h>
#include "../../util/cmd-line-parser.hpp"

std::pair<std::vector<int>, std::vector<int>> linear_sieve(int n) {
	std::vector<int> lf(n + 1, 0), pr;
	for (int i = 2; i <= n; i++) {
		if (lf[i] == 0) {
			lf[i] = i;
			pr.push_back(i);
		}
		for (int j = 0; j < (int)pr.size() && pr[j] <= lf[i] && i * pr[j] <= n; j++)
			lf[i * pr[j]] = pr[j];
	}
	return make_pair(lf, pr);
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


	std::vector<int> lf;
	std::tie(lf, std::ignore) = linear_sieve(n);

	std::ofstream of(fpath);
	for (int i = 1; i <= n; i++)
		of << lf[i] << '\n';
	of.close();

	std::cout << "prev  : [";
	for (int i = 1; i < plen; i++)
		std::cout << lf[i] << (i == plen - 1 ? ", ...]\n" : ", ");

	auto etime = std::chrono::high_resolution_clock::now();
	auto time = std::chrono::duration_cast<std::chrono::seconds>(etime - stime).count();
	std::cout << "time   : " << time << " seconds\n";
}