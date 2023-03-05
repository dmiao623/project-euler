k1 = [[0 for i in range(37)] for j in range(10)]
k1[0][0] = 1
for i in range(1, 10):
	for j in range(1, 37):
		for k in range(max(j - 4, 0), j):
			k1[i][j] += k1[i - 1][k]
p1 = k1[-1]

k2 = [[0 for i in range(37)] for j in range(7)]
k2[0][0] = 1
for i in range(1, 7):
	for j in range(1, 37):
		for k in range(max(j - 6, 0), j):
			k2[i][j] += k2[i - 1][k]
p2 = k2[-1]
print(p1)
print(p2)

ans = 0
for i in range(1, 37):
	s = 0
	for j in range(1, i):
		s += p2[j]
	ans += s * p1[i]
ans /= 4 ** 9 * 6 ** 6
with open('answer.txt', 'w+') as af:
	print(round(ans, 7), file = af)
	af.close()

