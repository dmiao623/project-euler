from sympy.ntheory.factor_ import totient

n = 10 ** 6
m, k = 0, -1
for i in range(2, n + 1):
	p = totient(i)
	if i / p > m:
		m, k = i / p, i
with open('answer.txt', 'w+') as af:
	print(k, file = af)
	af.close()
