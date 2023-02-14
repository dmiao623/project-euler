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

lf, pr = sieve(1000000)
ub = max(pr)

ans, prm = 0, -1
for l in range(len(pr)):
	s = 0
	for r in range(l, len(pr)):
		s += pr[r]
		if s > ub:
			break
		if lf[s] == s and r - l + 1 > ans:
			ans, prm = r - l + 1, s
with open('answer.txt', 'w+') as af:
	print(prm, file = af)
	af.close()

