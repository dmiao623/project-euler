n = 2 ** 1000
s = 0
while n != 0:
	s += n % 10
	n //= 10
with open('answer.txt', 'w+') as af:
	print(s, file = af)
	af.close()