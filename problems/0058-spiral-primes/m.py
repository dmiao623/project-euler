import math

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

def isp(n):
	b = int(math.sqrt(n)) + 2
	for i in range(2, b):
		if n % i == 0:
			return False
	return True

prm, tot = 0, 1
ans = -1
for i in range(3, 10 ** 6, 2):
	br = i * i
	df = i - 1
	for j in range(1, 4):
		k = br - df * j
		if isp(k):
			prm += 1
	tot += 4
	if 10 * prm < tot:
		ans = i
		break
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()