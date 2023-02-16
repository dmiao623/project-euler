ls = [str(i + 1) for i in range(9)]
ans = 0
for b in range(1, 10 ** 5):
	s = ''
	k = 1
	while len(s) < len(ls):
		s += str(k * b)
		k += 1
	if sorted(s) == ls:
		ans = max(ans, int(s))
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()
