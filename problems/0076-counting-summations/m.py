dp = [[0 for i in range(101)] for j in range(100)]
dp[0][0] = 1
for i in range(1, 100):
	for j in range(101):
		dp[i][j] += (dp[i][j - i] if j >= i else 0) + dp[i - 1][j]
with open('answer.txt', 'w+') as af:
	print(dp[99][100], file = af)
	af.close()
