n = 10 ** 4
f = [0] * n

with open('../../library/sequences/primes.txt') as df:
	pr = []
	while True:
		p = int(df.readline())
		if p >= n:
			break
		pr.append(p)
	df.close()

f[0] = 1
for p in pr:
	for i in range(p, n):
		f[i] += f[i - p]
ans = -1
for i in range(n):
	if f[i] >= 5_000:
		ans = i
		break
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()
