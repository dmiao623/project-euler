s = 1
c = 3
for n in range(3, 1003, 2):
	s += 4 * c + 6 * (n - 1)
	c = c + 3 * (n - 1) + n + 1
with open('answer.txt', 'w+') as af:
	print(s, file = af)
	af.close()
