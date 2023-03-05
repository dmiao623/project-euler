s = set()
for a in range(2, 101):
	for b in range(2, 101):
	 	s.add(a ** b)
with open('answer.txt', 'w+') as af:
	print(len(s), file = af)
	af.close()