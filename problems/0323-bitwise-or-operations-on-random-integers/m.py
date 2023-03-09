from math import comb
from decimal import *

n = 32
ans = Decimal(0.0)
getcontext().prec = 30
for k in range(1, n + 1):
	ans += (-1) ** (k + 1) * comb(n, k) * Decimal(2 ** k) / Decimal(2 ** k - 1)
with open('answer.txt', 'w+') as af:
	print(round(ans, 10), file = af)
	af.close()