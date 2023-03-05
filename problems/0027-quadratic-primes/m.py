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
lim = 10 ** 6
lf, pr = sieve(lim)
mx, ans = -1, -1
for a in range(-1000, 1001):
	for b in range(-1000, 1001):
		n = 0
		while lf[n * n + a * n + b] == n * n + a * n + b:
			n += 1
		if n > mx:
			mx, ans = n, a * b
with open('answer.txt', 'w+') as af:
	print(ans, file = af)

