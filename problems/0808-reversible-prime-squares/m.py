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

n = 4 * 10 ** 7
lf, pr = sieve(n)
prs = [x * x for x in pr]
chk = set(prs)

ans = 0
f = 0
for x in prs:
	s = str(x)
	if s != s[::-1] and int(s[::-1]) in chk:
		ans += x 
		f += 1
	if f == 50:
		break
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()