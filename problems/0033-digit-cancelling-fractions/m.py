import math

p, q = 1, 1
n = 0
for a in range(10, 100):
	for b in range(a + 1, 100):
		if a % 10 == 0 and b % 10 == 0:
			continue
		aa, bb = str(a), str(b)
		for d in range(10):
			if str(d) in aa and str(d) in bb:
				x = d if aa == str(d) * 2 else int(aa.replace(str(d), ''))
				y = d if bb == str(d) * 2 else int(bb.replace(str(d), ''))
				# print(a, b, x, y)
				if y != 0 and x / y == a / b:
					n += 1
					p *= a
					q *= b
					print(a, b)
assert n == 4
with open('answer.txt', 'w+') as af:
	print(q // math.gcd(p, q), file = af)
	af.close()