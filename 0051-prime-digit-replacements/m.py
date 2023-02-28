n = 10 ** 6
pr = []
with open('../sequences/primes.txt', 'r') as df:
	for l in df:
		k = int(l)
		if k > n:
			break
		pr.append(k)
pm = [False] * (n + 1)
for p in pr:
	pm[p] = True
vis = set()
for p in pr:
	s = str(p)
	k = len(s)
	ms = []
	for b in range(1, 1 << k):
		t = s
		for i in range(k):
			if b >> i & 1:
				t = t[:i] + '*' + t[i + 1:]
		ms.append(t)
	for m in ms:
		if m in vis:
			continue
		vis.add(m)
		c = 0
		for d in range(10):
			t = int(m.replace('*', str(d)))
			if len(str(t)) < len(m):
				continue
			if pm[t]:
				c += 1
				print(t, d, m)
		if c >= 8:
			for d in range(10):
				t = int(m.replace('*', str(d)))
				if pm[t]:
					print(t)
					exit(0)
	print(p, ms)
