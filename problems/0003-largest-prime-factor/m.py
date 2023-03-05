import math

n = 600851475143
b = int(math.sqrt(n))
mx = 0
for i in range(2, b + 1):
	while n % i == 0:
		n //= i
		mx = i
mx = max(mx, n)
with open('answer.txt', 'w+') as af:
	print(mx, file = af)