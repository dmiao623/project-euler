with open('data.txt', 'r') as df:
	a = [list(map(int, l.split())) for l in df]
	df.close()
n = len(a)
m = len(a[0])
f = [[0 for j in range(1 << m)] for i in range(n)]
for j in range(m):
	f[0][1 << j] = a[0][j]
for i in range(1, n):
	for b in range(1 << m):
		for j in range(m):
			if (b >> j & 1) == 0:
				f[i][b | (1 << j)] = max(f[i][b | (1 << j)], f[i - 1][b] + a[i][j])
with open('answer.txt', 'w+') as af:
	print(f[n - 1][(1 << m) - 1], file = af)