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

N = 10 ** 4
B = 10 * N
lf, pr = sieve(B)
sd = [0] * (B + 1)
for i in range(1, B + 1):
	k = i
	sd[i] = 1
	while k != 1:
		t = lf[k]
		c = 0
		while lf[k] == t:
			c += 1
			k //= t
		sd[i] *= (1 - t ** (c + 1)) // (1 - t)
	sd[i] -= i
ans = 0
for i in range(1, N + 1):
	if sd[sd[i]] == i and sd[i] != i:
		print(i)
		ans += i
with open('answer.txt', 'w+') as af:
	print(ans, file = af)

