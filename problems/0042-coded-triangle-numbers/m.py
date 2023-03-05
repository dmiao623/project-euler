with open('data.txt', 'r') as df:
	words = df.readline()[1:-1].split('","')
	df.close()

tri = [False for i in range(1000000)]
for i in range(1, 1000000):
	t = i * (i + 1) // 2
	if t >= 1000000:
		break
	tri[t] = True

ans = 0
for w in words:
	s = 0
	for c in w:
		s += ord(c) - ord('A') + 1
	if tri[s]:
		ans += 1
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()