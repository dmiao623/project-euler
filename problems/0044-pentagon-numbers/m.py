import math

def is_pent(x):
	d = 1 + 24 * x
	sd = int(math.sqrt(d) + 0.3)
	return sd ** 2 == d and (1 + sd) % 6 == 0

n = 10000
p = [i * (3 * i - 1) // 2 for i in range(1, n + 1)]
mn = 10 ** 18
for b in p:
	for a in p:
		if a > b:
			break
		if is_pent(a + b) and is_pent(b - a):
			mn = min(mn, b - a)
with open('answer.txt', 'w+') as af:
	print(mn, file = af)
	af.close()