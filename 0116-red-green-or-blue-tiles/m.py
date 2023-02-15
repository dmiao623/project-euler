def calc(m, n):
	dp = [0] * (n + 1)
	dp[0] = 1
	for i in range(1, n + 1):
		dp[i] = dp[i - 1] + (dp[i - m] if i >= m else 0)
	return dp[n]

n = 50
with open('answer.txt', 'w+') as af:
	print(calc(2, n) + calc(3, n) + calc(4, n) - 3, file = af)
	af.close()