n = 100_000_000
with open('../../library/sequences/least-factor.txt', 'r') as df:
	lf = [0] + [int(df.readline()) for i in range(n)]
	df.close()
ans = 0
for i in range(2, n):
	k = i // lf[i]
	if i != lf[i] and lf[k] == k:
		ans += 1
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()