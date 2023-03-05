base = sorted('123456789')
ans = set()
for a in range(1, 100000):
	for b in range(1, 100000):
		c = a * b
		if sorted(str(a) + str(b) + str(c)) == base:
			ans.add(c)
		elif len(str(a) + str(b) + str(c)) > len(base):
			break
with open('answer.txt', 'w+') as af:
	print(sum(ans), file = af)
	af.close()
