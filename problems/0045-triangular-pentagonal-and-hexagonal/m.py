N = 10 ** 6
t = set([n * (n + 1) // 2 for n in range(1, N)])
p = set([n * (3 * n - 1) // 2 for n in range(1, N)])
h = set([n * (2 * n - 1) for n in range(1, N)])
k = list(t.intersection(p).intersection(h))
with open('answer.txt', 'w+') as af:
	print(k[2], file = af)
	af.close()