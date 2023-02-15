# https://www.geeksforgeeks.org/next-permutation/

def swapPositions(list, pos1, pos2):
	list[pos1], list[pos2] = list[pos2], list[pos1]
	return list
 
def nextPermutation(arr):
	n = len(arr)
	i = 0
	j = 0
	for i in range(n-2, -1, -1):
		if (arr[i] < arr[i + 1]):
			break
	if (i < 0):
		arr.reverse()
	else:
		for j in range(n-1, i, -1):
			if (arr[j] > arr[i]):
				break
		swapPositions(arr, i, j)
		strt, end = i+1, len(arr)
		arr[strt:end] = arr[strt:end][::-1]

arr = [i for i in range(10)]
for i in range(10 ** 6 - 1):
	nextPermutation(arr)
with open('answer.txt', 'w+') as af:
	print(str(arr)[1:-1].replace(', ', ''), file = af)