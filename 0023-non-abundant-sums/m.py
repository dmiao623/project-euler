lim = 28123
ab = []
for i in range(lim + 1):
	s = 0
	for j in range(1, i):
		if i % j == 0:
			s += j
	if s > i:
		ab.append(i)
vis = [False for i in range(lim * 2 + 2)]
for x in ab:
	for y in ab:
		vis[x + y] = True
ans = 0
for i in range(1, lim + 1):
	if not vis[i]:
		ans += i
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()

