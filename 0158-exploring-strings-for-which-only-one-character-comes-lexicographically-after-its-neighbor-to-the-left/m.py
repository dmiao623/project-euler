N = 10 ** 6
f = [[0 for i in range(26)] for j in range(N + 1)]
g = [[0 for i in range(26)] for j in range(N + 1)]
f[1] = [1 for i in range(26)]
for i in range(2, N + 1):
	p = 0
	for j in range(25, -1, -1):	
		p += f[i - 1][j]
		f[i][j] = p
	q = 0
	for j in range(25, -1, -1):
		q += g[i - 1][j]
		p -= f[i - 1][j]
		g[i][j] = p + q
h = [sum(g[i]) for i in range(N + 1)]
with open('answer.txt', 'w+') as af:
	print(max(h), file = af)
	af.close()

