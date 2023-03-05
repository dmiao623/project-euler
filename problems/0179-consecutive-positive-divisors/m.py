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

n = 10 ** 7
lf, pr = sieve(n)
pv = [-1] * (n + 1)
pw = [-1] * (n + 1)
dv = [1] * (n + 1)
for i in range(2, n + 1):
	j = i // lf[i]
	if lf[i] == lf[j]:
		pv[i] = pv[j]
		pw[i] = pw[j] + 1
	else:
		pv[i] = j
		pw[i] = 1
	dv[i] = (pw[i] + 1) * dv[pv[i]]
ans = 0
for i in range(2, n):
	if dv[i] == dv[i + 1]:
		ans += 1
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()