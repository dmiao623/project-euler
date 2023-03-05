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
		if i % 1000000 == 0:
			print(i)
	return (lf, pr)

n = 10 ** 9
lf, pr = sieve(100)

def gen(x, k):
	r = 1
	for i in range(k, len(pr)):
		l = x * pr[i]
		if l > n:
			break
		r += gen(l, i)
	return r
with open('answer.txt', 'w+') as af:
	print(gen(1, 0), file = af)
	af.close()