for a in range(1, 1000):
	for b in range(a, 1000):
		c = 1000 - a - b
		if a * a + b * b == c * c:
			with open('answer.txt', 'w+') as af:
				print(a * b * c, file = af)
				af.close()
			exit(0)