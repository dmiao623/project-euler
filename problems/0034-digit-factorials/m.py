lim = int(10 ** 6.36346) + 30
fac = [1] * 10
for i in range(1, 10):
	fac[i] = i * fac[i - 1]
s = 0
for i in range(10, lim):
	ss = 0
	k = i
	while k != 0:
		ss += fac[k % 10]
		k //= 10
	if ss == i:
		s +=  i	
with open('answer.txt', 'w+') as af:
	print(s, file = af)
	af.close()
