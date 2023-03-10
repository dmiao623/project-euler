n = 10
g = [[] for i in range(n)]
with open('data.txt', 'r') as df:
	for l in df:
		a, b, c = int(l[0]), int(l[1]), int(l[2])
		g[a].append(b)
		g[b].append(c)
	df.close()

d = []
vis = [False] * n
def dfs(x):
	if vis[x]:
		return
	vis[x] = True
	for y in g[x]:
		dfs(y)
	d.append(x)

for i in range(n):
	if len(g[i]) == 0:
		continue
	dfs(i)
with open('answer.txt', 'w+') as af:
	print(''.join([str(x) for x in d[::-1]]), file = af)
	af.close()