mx, ans = 0, -1
with open('data.txt', 'r') as df:
	for i in range(10000):
		n, r = map(int, df.readline().split())
		if n < 1000 and r > mx:
			mx, ans = r, n
	df.close()
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()