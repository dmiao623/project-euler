# adapted from https://dustin-miao.github.io/library/math/linear-sieve.hpp
def sieve(n):
	lf, pr = [0] * (n + 1), []
	for i in range(2, n + 1):
		if lf[i] == 0:
			lf[i] = i
			pr.append(i)
		j = 0
		while j < len(pr) and pr[j] <= lf[i] and i * pr[j] <= n:
			lf[i * pr[j]] = pr[j]
			j += 1
	return (lf, pr)

lf, pr = sieve(2000000)
with open('answer.txt', 'w+') as af:
	print(sum(pr), file = af)
