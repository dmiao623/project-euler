import math

L = 1500000
num = [0] * (L + 1)
for m in range(1, L + 1):
	for n in range(1, m):
		if math.gcd(n, m) != 1 or n % 2 == m % 2:
			continue 
		a = m * m - n * n
		b = 2 * m * n
		c = m * m + n * n
		s = a + b + c
		if s > L:
			break
		else:
			k = 1
			while k * s <= L:
				num[k * s] += 1
				k += 1
ans = 0
for i in range(L + 1):
	if num[i] == 1:
		ans += 1
with open('answer.txt', 'w+') as af:
	print(ans, file = af)

