import math

pm2 = []
n = 50000000
m2 = int(math.sqrt(n)) + 3
with open('../sequences/primes.txt', 'r') as df:
	while True:
		x = int(df.readline())
		if x > m2:
			break
		pm2.append(x)
	df.close()

m3 = int(n ** 0.333) + 3
pm3 = []
m4 = int(n ** 0.25) + 3
pm4 = []
for x in pm2:
	if x <= m3:
		pm3.append(x)
	if x <= m4:
		pm4.append(x)
vis = set()
for p in pm2:
	for q in pm3:
		for r in pm4:
			s = p ** 2 + q ** 3 + r ** 4
			if s < n:
				vis.add(s)
with open('answer.txt', 'w+') as af:
	print(len(vis), file = af)
	af.close()
