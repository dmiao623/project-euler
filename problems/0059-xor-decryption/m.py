with open('data.txt', 'r') as df:
	s = list(map(int, df.readline().split(',')))
n = len(s)
l, r = ord('a'), ord('z')
for a in range(l, r + 1):
	for b in range(l, r + 1):
		for c in range(l, r + 1):
			k = [a, b, c]
			o = ''.join([chr(k[i % 3] ^ s[i]) for i in range(n)])
			t = o.lower()
			if 'the' in t and 'a' in t and 'of' in t and 'and' in t and 'to' in t and 'will' in t:
				ret = o
ans = 0
# print(ret)
for c in ret:
	ans += ord(c)
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()