n = 10000000
vis = [-1 for i in range(n + 1)]
vis[1] = 1
vis[89] = 89

def sqd(i):
	r = 0
	while i > 0:
		d = i % 10
		r += d * d
		i //= 10
	return r

def dfs(i):
	if vis[i] == -1:
		vis[i] = dfs(sqd(i))
	return vis[i]

ans = 0
for i in range(1, n + 1):
	if vis[i] == -1:
		dfs(i)
	if vis[i] == 89:
		ans += 1
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()