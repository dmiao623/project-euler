ans = 0
for i in range(1, 2 ** 30 + 1):
	if i ^ (2 * i) ^ (3 * i) == 0:
		ans += 1
with open('answer.txt', 'w+') as af:
	print(ans, file = af)