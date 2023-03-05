with open('data.txt', 'r') as df:
	l = df.readline()[1:-1].split('","')
	df.close()
l.sort()
ans = 0
for i in range(len(l)):
	s = 0
	for c in l[i]:
		s += ord(c) - ord('A') + 1
	ans += (i + 1) * s
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()