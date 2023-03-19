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
	int n = _n == "" ? 10'000'000 : std::stoi(_n);
	std::string fpath = get_arg(argv, argv + argc, "-f");
	assert(fpath != "");
	auto _plen = get_arg(argv, argv + argc, "-p");
	int plen = std::min(n, _plen == "" ? 10 : std::stoi(_plen));

	std::cout << "terms  : " << n << '\n';
	std::cout << "file   : " << fpath << '\n';

	int m = 0;
	if (n <= 1'000) 
		m = 7'919;
	else if (n <= 10'000)
		m = 104'729;
	else if (n <= 100'000)
		m = 1'299'709;
	else if (n <= 1'000'000)
		m = 15'485'863;
	else if (n <= 10'000'000)
		m = 179'424'673;
	else if (n <= 100'000'000) // not tested
		m = 2'038'074'743;

	std::vector<int> pr;
	std::tie(std::ignore, pr) = linear_sieve(m);

	std::ofstream of(fpath);
	for (int i = 0; i <= n; i++)
		of << pr[i] << '\n';
	of.close();

	std::cout << "prev   : [";
	for (int i = 0; i < plen; i++)
		std::cout << pr[i] << (i == plen - 1 ? ", ...]\n" : ", ");

	auto etime = std::chrono::high_resolution_clock::now();
	auto time = std::chrono::duration_cast<std::chrono::seconds>(etime - stime).count();
	std::cout << "time   : " << time << " seconds\n";
}