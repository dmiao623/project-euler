n = 80
inf = 10 ** 18
with open('data.txt', 'r') as df:
	mat = [list(map(int, df.readline().split(','))) for i in range(n)]
	df.close()
dp = [[inf for i in range(n)] for j in range(n)]
for i in range(n):
	dp[i][0] = mat[i][0]
for j in range(1, n):
	for i in range(n):
		s = 0
		for k in range(i, -1, -1):
			s += mat[k][j]
			dp[i][j] = min(dp[i][j], dp[k][j - 1] + s)
		s = 0
		for k in range(i, n):
			s += mat[k][j]
			dp[i][j] = min(dp[i][j], dp[k][j - 1] + s)
with open('answer.txt', 'w+') as af:
	print(min([dp[i][n - 1] for i in range(n)]), file = af)
	af.close()
