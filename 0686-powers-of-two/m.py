import time

L = '123'
N = 678910

p = 1
n = 0
e = 0
s = time.time()
while n < N:
	p = int(str(p * 2)[:50])
	e += 1
	if str(p)[:3] == L:
		n += 1
		if n % 10000 == 0:
			print(n, e, time.time() - s)
with open('answer.txt', 'w+') as af:
	print(e, file = af)
	af.close()
