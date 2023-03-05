def rm(x: int):
	"""
	Primality test based on Miller-Rabin algorithm. Complexity is
	logarithmic in the size of x. 

	x: positive integer value less than 2^64
	"""

	if x < 31:
		return (0x208A28AC >> x & 1) == 1
	elif (x % 2 == 0 or x % 3 == 0 or x % 5 == 0 or x % 7 == 0
		or x % 11 == 0 or x % 13 == 0 or x % 17 == 0):
		return False
	elif x < 323:
		return True

	ta = []
	if x < 5329:
		ta = [377687]
	elif x < 9080191:
		ta = [31, 73]
	elif x < 4759123141:
		ta = [2, 7, 61]
	elif x < 1122004669633:
		ta = [2, 13, 23, 1662803]
	else:
		ta = [2, 325, 9375, 28178, 450775, 9780504, 1795265022]

	d, s = (x - 1) >> 1, 0
	while (d & 1) == 0:
		s += 1
		d >>= 1
	for t in ta:
		b = pow(t, d, x)
		if b == 1 or b == x - 1:
			continue
		mp = False
		for r in range(s):
			b = b * b % x
			if b == 1:
				return False
			if b == x - 1:
				mp = True
				break
		if not mp:
			return False
	return True

n = 10 ** 7
pm = [False] * (n + 1)
with open('../sequences/primes.txt', 'r') as df:
	for l in df:
		p = int(l)
		if p > n:
			break
		pm[p] = True
	df.close()
for i in range(1, n + 1):
	assert pm[i] == rm(i)