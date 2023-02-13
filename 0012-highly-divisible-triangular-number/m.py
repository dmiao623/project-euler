import math

def factor(n):
	b = int(math.sqrt(n))
	ret = dict()
	for i in range(2, b + 1):
		while n % i == 0:
			if not i in ret:
				ret[i] = 0
			ret[i] += 1
			n //= i
	if n != 1:
		ret[n] = 1
	return ret

def merge(a, b):
	return {i : a.get(i, 0) + b.get(i, 0) for i in set(a).union(b)}

bnd = 500
for n in range(2, 10000000):
	a, b = n - 1, n
	if a % 2 == 0:
		a //= 2
	else:
		b //= 2
	c = merge(factor(a), factor(b))
	p = 1
	for k in c.values():
		p *= k + 1
	# print(f'{n * (n - 1) // 2} {a} {b}: {c}')
	if p >= bnd:
		with open('answer.txt', 'w+') as af:
			print(n * (n - 1) // 2, file = af)
			af.close()
		exit(0)

