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
lf, pr = sieve(N)
ans = 0
for i in range(1, N + 1):
	t = len(str(i)) - 1
	circ = True
	k = i
	while True:
		k = (k // 10) + (k % 10) * 10 ** t
		print(i, k)
		if lf[k] != k:
			circ = False
			break
		if k == i:
			break
	if circ:
		ans += 1
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close() 