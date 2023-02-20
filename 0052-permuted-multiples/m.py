n = 10 ** 7
ans = -1
for i in range(1, n):
	k = sorted(str(2 * i))
	y = True
	for p in range(2, 7):
		if k != sorted(str(p * i)):
			y = False
	if y:
		ans = i
		break
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	print([ans * i for i in range(1, 7)])
	af.close()