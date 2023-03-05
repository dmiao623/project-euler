s = '0'
n = 1
while len(s) <= 1000000:
	s += str(n)
	n += 1
p = 1
k = 1
while k <= 10 ** 6:
	p *= ord(s[k]) - ord('0')
	k *= 10
with open('answer.txt', 'w+') as af:
	print(p, file = af) 
	af.close()