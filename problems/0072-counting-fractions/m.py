from sympy.ntheory.factor_ import totient

ans = 0
for i in range(2, 1000001):
	ans += totient(i)
with open('answer.txt', 'w+') as af:
	print(ans, file = af)