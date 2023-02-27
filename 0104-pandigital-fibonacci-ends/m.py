import math

def pandig(x):
	b = 0
	for i in range(9):
		d = x % 10
		if d == 0:
			break
		b |= 1 << (d - 1)
		x //= 10
	return x == 0 and b == 511

def ndig(num, n):
    return num // 10 ** (int(math.log10(num)) - n + 1)

n = 2
a, b = 1, 1
while True:
	a += b
	a, b = b, a
	n += 1
	if pandig(b % 1000000000) and pandig(int(ndig(b, 9))):
		break
with open('answer.txt', 'w+') as af:
	print(n, file = af)
	af.close()