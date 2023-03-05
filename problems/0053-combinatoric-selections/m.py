def C(n, k):
	p = 1
	for i in range(n - k + 1, n + 1):
		p *= i
	for i in range(2, k + 1):
		p //= i
	return p

ans = 0
for n in range(1, 101):
	for r in range(0, n + 1):
		if C(n, r) > 10 ** 6:
			ans += 1
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()