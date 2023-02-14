p = 0
for i in range(1000):
	if i % 3 == 0 or i % 5 == 0:
		p += i
with open('answer.txt', 'w+') as af:
	print(p, file = af)