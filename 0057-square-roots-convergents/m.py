import math

nn, dd = 2, 1
ans = 0
for i in range(1000):
	nn, dd = dd, nn
	nn += 2 * dd
	g = math.gcd(nn, dd)
	nn //= g
	dd //= g
	nt = nn - dd
	if len(str(nt)) > len(str(dd)):
		ans += 1
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()