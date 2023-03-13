def sqdis(x1, y1, x2, y2):
	return (x1 - x2) ** 2 + (y1 - y2) ** 2

n = 50
ans = 0
for x1 in range(n + 1):
	for y1 in range(n + 1):
		if x1 == 0 and y1 == 0:
			continue
		for x2 in range(n + 1):
			for y2 in range(n + 1):
				if x2 == 0 and y2 == 0:
					continue
				if x1 == x2 and y1 == y2:
					continue 
				a = [sqdis(0, 0, x1, y1), sqdis(0, 0, x2, y2), sqdis(x1, y1, x2, y2)]
				if sum(a) - max(a) == max(a):
					ans += 1
with open('answer.txt', 'w+') as af: 
	print(ans // 2, file = af)
	af.close()