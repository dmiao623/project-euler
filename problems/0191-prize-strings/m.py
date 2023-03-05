n = 30
dp = [[[[0 for i in range(n + 1)] for j in range(n + 1)] for k in range(n + 1)] for l in range(n + 1)]
dp[0][0][0][0] = 1
for i in range(n):
	for j in range(n):
		for k in range(n):
			for l in range(n):
				v = dp[i][j][k][l]
				dp[i + 1][j + 1][k][max(j + 1, l)] += v
				dp[i + 1][0][k][l] += v
				dp[i + 1][0][k + 1][l] += v
ans = 0
for i in range(3):
	for j in range(2):
		for k in range(3):
			ans += dp[n][i][j][k]
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()
