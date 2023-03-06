def rotate(a):
	return list(zip(*a[::-1]))

def kadane(a):
	c, r = 0, 0
	for x in a:
		c = max(c + x, 0)
		r = max(r, c)
	return r

n = 2_000

m = n * n
z = 1_000_000
s = [(100_003 - 200_003 * i + 300_007 * i * i * i) % z - z // 2 for i in range(1, 56)]
for i in range(55, m):
	s.append((s[i - 24] + s[i - 55] + z) % z - z // 2)
a = [[s[i * n + j] for j in range(n)] for i in range(n)]
ans = 0
for i in range(4):
	for j in range(n):
		ans = max(ans, kadane(a[j]))
		ans = max(ans, kadane([a[j + k][k] for k in range(n - j)]))
	a = rotate(a)
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()
