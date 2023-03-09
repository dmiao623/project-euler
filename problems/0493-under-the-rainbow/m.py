from math import comb

n = 11 ** 7
f = [0.0] * n

f[0] = 1
ans = 0
for i in range(1, n):
	x, s = i, 0
	while x != 0:
		s += x % 11
		x //= 11
	if s > 20:
		continue
	x, d = i, 0
	while x != 0:
		c = x % 11
		if c != 0:
			f[i] += f[i - 11 ** d] * (10 - c + 1) / (70 - s + 1)
		x //= 11
		d += 1
	if s == 20:
		x, s = i, 0
		while x != 0:
			if x % 11 != 0:
				s += 1
			x //= 11
		ans += f[i] * s
with open('answer.txt', 'w+') as af: 
	print(round(ans, 9), file = af)

	# linearity of expectation solution: ._.
	# print(7 * (1 - math.comb(60, 10) / math.comb(70, 20)), file = af) 

	af.close()