n = 6
m = 2 ** 6
z = 1_005_075_251

pcnt = lambda x: bin(x).count('1')
o = sorted([i for i in range(m) if pcnt(i) > 1], key = pcnt)

def solve(t, a):
	f = [set() for i in range(m)]
	for i in range(n):
		f[1 << i].add(a[i])
	ans = t if t in a else 10 ** 9
	for i in o:
		j = (i - 1) & i
		while j != 0:
			k = i ^ j
			if j < k:
				f[i].update([a + b for a in f[j] for b in f[k]])
				f[i].update([a * b for a in f[j] for b in f[k]])
			f[i].update([a - b for a in f[j] for b in f[k]])
			f[i].update([a // b for a in f[j] for b in f[k] if b != 0 and a % b == 0])
			j = (j - 1) & i
		if t in f[i]:
			ans = min(ans, sum([a[j] for j in range(n) if i >> j & 1]))
	# print(t, a, ans)
	return 0 if ans == 10 ** 9 else ans

t, a = [], []
with open('data.txt', 'r') as df:
	for l in df:
		k = l.index(':')
		t.append(int(l[:k]))
		a.append(list(map(int, l[k+1:].split(','))))
	df.close()
with open('answer.txt', 'w+') as af:
	print(sum([3 ** (i + 1) % z * solve(t[i], a[i]) for i in range(len(t))]) % z, file = af)
	af.close()