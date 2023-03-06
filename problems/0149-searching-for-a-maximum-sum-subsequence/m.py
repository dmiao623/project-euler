import numpy as np

def rotate(a):
	return list(zip(*a[::-1]))

def kadane(a):
	c, r = 0, 0
	for x in a:
		c = max(c + x, 0)
		r = max(r, c)
	return r

n = 2_000
# n = 2000
m = n * n
# s = [-2, 5, 3, 2, 9, -6, 5, 1, 3, 2, 7, 3, -1, 8, -4, 8]
z = 1_000_000
s = [(100_003 - 200_003 * i + 300_007 * i * i) % z - z // 2 for i in range(1, 56)]
for i in range(55, m):
	s.append((s[i - 24] + s[i - 55] + z) % z - z)
a = [[s[i * n + j] for j in range(n)] for i in range(n)]
print(s, a)
ans = 0
for i in range(4):
	print('rotated: ', i)
	print(np.matrix(a))
	for j in range(n):
		ans = max(ans, kadane(a[j]))
		ans = max(ans, kadane([a[j + k][k] for k in range(n - j)]))
		print(j, [a[j + k][k] for k in range(n - j)], end = '\n\n')
	a = rotate(a)
print(ans)