with open('data.txt', 'r') as df:
	s = 0
	for l in df:
		s += int(l)
	with open('answer.txt', 'w+') as af:
		print(str(s)[:10], file = af)
		af.close()
	df.close()