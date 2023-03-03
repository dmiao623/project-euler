f = [[[0 for i in range(10)] for i in range(10)] for i in range(21)]
for d in range(1, 10):
	f[1][0][d] = 1
for i in range(2, 21):
	for a in range(10):
		for b in range(10):
			for c in range(10):
				if a + b + c <= 9:
					f[i][b][c] += f[i - 1][a][b]
ans = 0
for a in range(10):
	for b in range(10):
		ans += f[20][a][b]
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()
