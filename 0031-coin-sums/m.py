coin = [1, 2, 5, 10, 20, 50, 100, 200]
n = len(coin)
tar = 200
dp = [[0 for i in range(tar + 1)] for j in range(n + 1)]
dp[0][0] = 1
for i in range(1, n + 1):
	c = coin[i - 1]
	for j in range(0, tar + 1):
		dp[i][j] = dp[i - 1][j] + (dp[i][j - c] if j >= c else 0)
with open('answer.txt', 'w+') as af:
	print(dp[n][tar], file = af)
	af.close()
