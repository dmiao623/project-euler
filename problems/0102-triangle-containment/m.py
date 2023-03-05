def area(x1, y1, x2, y2, x3, y3):
	return abs(x1 * (y2 - y3) + x2 * (y3 - y1) + x3 * (y1 - y2)) / 2

ans = 0
with open('data.txt', 'r') as df:
	for l in df:
		x1, y1, x2, y2, x3, y3 = map(int, l.split(','))
		print(x1, y1, x2, y2, x3, y3)
		a = area(x1, y1, x2, y2, x3, y3)
		f = area(x1, y1, x2, y2, 0, 0)
		g = area(x1, y1, x3, y3, 0, 0)
		h = area(x2, y2, x3, y3, 0, 0)
		if a == f + g + h:
			ans += 1
	df.close()
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()

