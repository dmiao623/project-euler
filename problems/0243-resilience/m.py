class euler_totient:
	def __init__(self, n, tt_file, pr_file):
		self.ttn = min(n, len(open(tt_file, 'r').readlines()))
		with open(tt_file, 'r') as df:
			self.tt = [0] + [int(df.readline()) for i in range(1, self.ttn + 1)]
			df.close()
		pr = []
		if self.ttn < n:
			with open(pr_file, 'r') as df:
				sn = n // 5
				while True:
					p = int(df.readline())
					if p > sn:
						break
					pr.append(p)
				df.close()
		self.pr = pr

	def __call__(self, x):
		if x <= self.ttn:
			return self.tt[x]
		r = x
		for p in self.pr:
			if p > x:
				break
			if x % p == 0:
				r //= p
				r *= p - 1
				x /= p
		return r

n = 1_000_000_000
et = euler_totient(n, 
	'../../library/sequences/euler-totient.txt',
	'../../library/sequences/primes.txt'
)

ans = -1
with open('../../library/sequences/primes.txt', 'r') as df:
	p = 1
	for l in df:
		p *= int(l)
		if p > n:
			break
		if (et(p) + 1) / (p - 1) < 15499 / 94744:
			ans = i
			break
	df.close()
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()