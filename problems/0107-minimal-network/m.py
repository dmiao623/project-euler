class union_find:
	def __init__(self, n):
		self.par = [i for i in range(n)]

	def find(self, u):
		if self.par[u] == u:
			return u
		self.par[u] = self.find(self.par[u])
		return self.par[u]

	def merge(self, u, v):
		u, v = self.find(u), self.find(v)
		if u != v:
			self.par[u] = v
			return True
		return False

n = 40
e = []
tot = 0
with open('data.txt', 'r') as df:
	for i in range(n):
		c = df.readline().strip().split(',')
		for j in range(n):
			if c[j] == '-':
				continue
			e.append((i, j, int(c[j])))
			tot += int(c[j])
	df.close()

e.sort(key = lambda x: x[2])
dsu = union_find(n)
ans = 0
for u, v, w in e:
	if dsu.merge(u, v):
		ans += w
with open('answer.txt', 'w+') as af:
	print(tot // 2 - ans, file = af)
	af.close()