ans = 0
area = 0
for a in range(2000):
	for b in range(2000):
		n = a * b * (a + 1) * (b + 1) // 4
		if abs(n - 2000000) < abs(ans - 2000000):
			ans = n
			area = a * b
with open('answer.txt', 'w+') as af:
	print(area, file = af)