def dsum(n):
	return sum([ord(x) - ord('0') for x in str(n)])
ans = 0
for a in range(1, 100):
	for b in range(1, 100):
		ans = max(ans, dsum(a ** b))
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()