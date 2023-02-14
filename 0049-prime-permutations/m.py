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

lf, pr = sieve(9999)
with open('answer.txt', 'w+') as af:
	for a in pr:
		for b in pr:
			if a < b and sorted(str(a)) == sorted(str(b)):
				if a == 1487 and b == 4817:
					continue
				c = 2 * b - a
				if c in pr and sorted(str(c)) == sorted(str(a)):
					s = f'{a}{b}{c}'
					print(s, file = af)
					exit(0)

