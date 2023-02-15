def F(m, n):
	g = [0] * (n + 1)
	p = [0] * (n + 1)
	g[0], p[0] = 1, 1
	for i in range(1, n + 1):
		g[i] = (p[i - m - 1] if i >= m + 1 else 0) + g[i - 1]
		p[i] = p[i - 1] + g[i]
	return g[n] + (p[n - m] if n >= m else 0)

ln, rn = 50, 10 ** 6
while ln < rn:
	mn = (ln + rn) // 2
	if F(50, mn) >= 1000000:
		rn = mn
	else:
		ln = mn + 1

with open('answer.txt', 'w+') as af:
	print(ln, file = af)
