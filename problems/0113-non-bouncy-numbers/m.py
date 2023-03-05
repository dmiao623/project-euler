f = [[0 for i in range(10)] for j in range(101)]
g = [[0 for i in range(10)] for j in range(101)]
for i in range(10):
	f[1][i] = 1
	g[1][i] = 1
ans = 9
for i in range(2, 101):
	for j in range(10):
		for k in range(j + 1):
			f[i][j] += f[i - 1][k]
		for k in range(j, 10):
			g[i][j] += g[i - 1][k]
		if 
		ans += f[i][j] + g[i][j] - 1

with open('answer.txt', 'w+') as af:
	print(2 * sum(dp[100][1:]) - 9, file = af)
	af.close()