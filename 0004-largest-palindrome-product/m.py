ans = 0
for a in range(100, 1000):
	for b in range(100, 1000):
		k = str(a * b)
		if k == k[::-1]:
			ans = max(ans, a * b)
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()
