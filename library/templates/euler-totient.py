import math

class euler_totient:
	def __init__(self, n, tt_file, pr_file):
		self.ttn = min(n, len(open(tt_file, 'r').readlines()))
		with open(tt_file, 'r') as df:
			self.tt = [0] + [int(df.readline()) for i in range(1, self.ttn + 1)]
			df.close()
		pr = []
		with open(pr_file, 'r') as df:
			sn = int(math.sqrt(n))
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
		b = math.sqrt(x)
		r = x
		print(b, self.pr)
		for p in self.pr:
			if p > b:
				break
			if x % p == 0:
				print(p)
				r //= p
				r *= p - 1
		return r
		
if __name__ == '__main__':
	et = euler_totient(142531441472, '../sequences/euler-totient.txt', '../sequences/primes.txt')
	print(et(142531441472))
