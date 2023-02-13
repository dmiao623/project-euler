with open('data.txt', 'r') as df:
	n, k = 20, 4
	mat = [list(map(int, line.split())) for line in df]
	assert len(mat) == n
	dir = [(0, 1), (1, 0), (1, 1), (-1, 1)]
	ans = 0
	for sx in range(n):
		for sy in range(n):
			for d in dir:
				dx, dy = d
				if sx + k * dx <= n and sy + k * dy <= n:
					p = 1
					x, y = sx, sy
					for i in range(k):
						p *= mat[x][y]
						x += dx
						y += dy
					ans = max(ans, p)
	with open('answer.txt', 'w+') as af:
		print(ans, file = af)
		af.close()
	df.close()