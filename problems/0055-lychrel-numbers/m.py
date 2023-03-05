ans = 0
for i in range(1, 10000):
	k = i
	l = True
	for j in range(52):
		k += int(str(k)[::-1])
		if str(k) == str(k)[::-1]:
			l = False
			break
	if l:
		ans += 1
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()