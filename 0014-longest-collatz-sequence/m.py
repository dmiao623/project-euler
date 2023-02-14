vis = dict({0 : 0, 1 : 0})
for s in range(1, 1000001):
	c = s
	cur = []
	while not c in vis:
		cur.append(c)
		c = c // 2 if c % 2 == 0 else c * 3 + 1
	start = vis[c]
	for x in reversed(cur):
		start += 1
		vis[x] = start
arr = [vis[i] for i in range(0, 1000001)]
ans, ind = 0, -1
for i in range(1, 1000001):
	if arr[i] > ans:
		ans, ind = arr[i], i
with open('answer.txt', 'w+') as af:
	print(ind, file = af)