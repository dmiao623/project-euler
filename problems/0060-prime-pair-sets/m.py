def miller_rabin(x: int):
	'''
	Primality test based on Miller-Rabin algorithm. Complexity is
	logarithmic in the size of x. 

	x: positive integer value less than 2^64.
	'''

	if x < 31:
		return (0x208A28AC >> x & 1) == 1
	elif (x % 2 == 0 or x % 3 == 0 or x % 5 == 0 or x % 7 == 0
		or x % 11 == 0 or x % 13 == 0 or x % 17 == 0):
		return False
	elif x < 323:
		return True

	ta = []
	if x < 5_329:
		ta = [377_687]
	elif x < 9_080_191:
		ta = [31, 73]
	elif x < 4_759_123_141:
		ta = [2, 7, 61]
	elif x < 1_122_004_669_633:
		ta = [2, 13, 23, 1_662_803]
	else:
		ta = [2, 325, 9_375, 28_178, 450_775, 9_780_504, 1_795_265_022]

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

n = 2_000
with open('../../library/sequences/primes.txt') as df:
	pr = [int(df.readline()) for i in range(n)]
	df.close()
st = [[x] for x in pr]
for i in range(2, 6):
	nt = []
	for v in st:
		for p in pr:
			y = True
			if p < v[-1]:
				continue
			for x in v:
				if not miller_rabin(int(str(p) + str(x))) or not miller_rabin(int(str(x) + str(p))):
					y = False
					break
			if y:
				nt.append(v + [p])
	st = nt
ans = 10 ** 18
for v in st:
	ans = min(ans, sum(v))
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()