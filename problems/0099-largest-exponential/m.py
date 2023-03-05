import math

mx, ans = 0, -1
with open('data.txt', 'r') as df:
	cur = 1
	for l in df:
		b, e = map(int, l.split(','))
		n = e * math.log(b)
		if n > mx:
			mx, ans = n, cur
		cur += 1
	df.close()
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
