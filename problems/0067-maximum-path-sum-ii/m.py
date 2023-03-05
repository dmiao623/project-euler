with open('data.txt', 'r') as df:
	n = 100
	dp = [int(df.readline())]
	for i in range(1, n):
		arr = list(map(int, df.readline().split()))
		ndp = [0] * len(arr)
		for i in range(len(arr)):
			ndp[i] = arr[i] + max(dp[i - 1] if i > 0 else 0, dp[i] if i < len(dp) else 0)
		dp = ndp
	df.close()
with open('answer.txt', 'w+') as af:
	print(max(dp), file = af)

