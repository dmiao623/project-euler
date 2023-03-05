from sympy.ntheory.factor_ import totient

n = 10 ** 7
m, p = 10 ** 18, -1
for i in range(2, n):
	j = totient(i)
	if i / j < m and sorted(str(i)) == sorted(str(j)):
		m, p = i / j, i
with open('answer.txt', 'w+') as af:
	print(p, file = af)
	af.close()