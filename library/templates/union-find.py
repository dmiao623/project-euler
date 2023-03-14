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