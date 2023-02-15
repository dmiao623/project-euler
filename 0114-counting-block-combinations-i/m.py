def F(m, n):
	g = [0] * (n + 1)
	p = [0] * (n + 1)
	g[0], p[0] = 1, 1
	for i in range(1, n + 1):
		g[i] = (p[i - m - 1] if i >= m + 1 else 0) + g[i - 1]
		p[i] = p[i - 1] + g[i]
	return g[n] + (p[n - m] if n >= m else 0)

with open('answer.txt', 'w+') as af:
	print(F(3, 50), file = af)