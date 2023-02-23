N = 1000
f = [0] * (N + 1)
f[0] = 1
for i in range(1, N + 1):
	f[i] = f[i - 1] * i
with open('../factorials.txt', 'w+') as df:
	for x in f:
		print(x, file = df)
	df.close()
