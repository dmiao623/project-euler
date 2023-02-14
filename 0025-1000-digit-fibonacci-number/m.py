a, b, ind = 1, 1, 2
while True:
	if len(str(b)) == 1000:
		with open('answer.txt', 'w+') as af:
			print(ind, file = af)
		exit(0)
	a, b = b, a + b
	ind += 1
