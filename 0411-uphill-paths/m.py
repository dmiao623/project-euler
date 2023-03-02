from bisect import bisect_left, bisect_right

def lis(a):
	f = []
	for x in a:
		i = bisect_right(f, x)
		if i == len(f):
			f.append(x)
		else:  
			f[i] = x
	return len(f)

def s(n):
	a = []