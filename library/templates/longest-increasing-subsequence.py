from bisect import bisect_left, bisect_right

def lis(a):
	'''
	Longest increasing sequence in an array. Complexity is 
	O(n log n) where n is the size of the array. Change
	`bisect_left` to `bisect_right` for strictly increasing.

	a: an array of numeric values. 
	'''

	f = []
	for x in a:
		i = bisect_left(f, x)
		if i == len(f):
			f.append(x)
		else:  
			f[i] = x
	return len(f)

if __name__ == '__main__'
	# tested on https://cses.fi/problemset/task/1145/ 
	n = int(input())
	a = list(map(int, input().split()))
	print(lis(a))