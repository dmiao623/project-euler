import math

nn, dd = -1, -1
for d in range(4, 1000001):
	if d == 7:
		continue
	n = int(3 / 7 * d)
	assert n / d <= 3 / 7
	while n > 0 and math.gcd(n, d) != 1:
		n -= 1
	if n * dd > nn * d:
		nn, dd = n, d
with open('answer.txt', 'w+') as af:
	print(n, file = af)