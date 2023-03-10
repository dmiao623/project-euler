ans = 0
for l in range(1, 100):
	for n in range(1, 1_000):
		k = len(str(n ** l))
		if k == l:
			ans += 1
		elif k > l:
			break
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()