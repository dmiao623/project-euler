from bisect import bisect_left, bisect_right

def lis(a):
	f = []
	for x in a:
		i = bisect_left(f, x)
		if i == len(f):
			f.append(x)
		else:  
			f[i] = x
	return len(f)

# tested on https://cses.fi/problemset/task/1145/ 
n = int(input())
a = list(map(int, input().split()))
print(lis(a))