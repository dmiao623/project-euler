n = 80
with open('data.txt', 'r') as df:
	mat = [list(map(int, df.readline().split(','))) for i in range(n)]
	df.close()
for i in range(n):
	for j in range(n):
		if i == 0 and j == 0:
			continue
		mat[i][j] += min(mat[i - 1][j] if i > 0 else 10 ** 9, mat[i][j - 1] if j > 0 else 10 ** 9)
with open('answer.txt', 'w+') as af:
	print(mat[n - 1][n - 1], file = af)
	af.close()