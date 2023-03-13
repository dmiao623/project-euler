from math import sqrt

def psq(x):
	return int(sqrt(x) + 0.5) ** 2 == x

b = 10 ** 9
c = b // 3 + 2
ans = 0
for k in range(1, c, 2):
	if 3 * k + 1 <= b:
		n = (((3 * k + 4) * k - 2) * k - 4) * k - 1
		if n & 15 == 0 and psq(n >> 4):
			ans += 3 * k + 1
	if 3 * k - 1 <= b:
		n = (((3 * k - 2) * k - 4) * k + 2) * k + 1
		if n & 15 == 0 and psq(n >> 4):
			ans += 3 * k - 1
print(ans)

