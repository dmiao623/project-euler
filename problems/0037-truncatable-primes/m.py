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
prs = set(pr)
ans, n = 0, 0
for p in pr:
	s = str(p)
	if len(s) == 1:
		continue
	yes = True
	for i in range(1, len(s)):
		if not int(s[:i]) in prs:
			yes = False
		if not int(s[i:]) in prs:
			yes = False
	if yes:
		ans += p
		n += 1
assert n == 11
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()