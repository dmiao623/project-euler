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

N = 10 ** 6
nf = [0 for i in range(N + 1)]
lf, pr = sieve(N)
nf[1] = 0
for i in range(2, N + 1):
	nf[i] = nf[i // lf[i]] + (0 if lf[i] == lf[i // lf[i]] else 1)
ans = 0
for i in range(2, N - 3):
	if nf[i] == 4 and nf[i + 1] == 4 and nf[i + 2] == 4 and nf[i + 3] == 4:
		ans = i
		break
with open('answer.txt', 'w+') as af:
	print(ans, file = af)

