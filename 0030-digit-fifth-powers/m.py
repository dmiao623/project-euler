ans = 0
for i in range(10, 10 ** 6):
	s = 0
	k = i
	while k != 0:
		d = k % 10
		s += d ** 5
		k //= 10
	if s == i:
		ans += i
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()