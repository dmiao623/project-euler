n = 50
dp = [0] * (n + 1)
dp[0] = 1
for i in range(1, n + 1):
	dp[i] = dp[i - 1]
	for m in range(2, 5):
		dp[i] += dp[i - m] if i >= m else 0
with open('answer.txt', 'w+') as af:
	print(dp[n], file = af)
	af.close()