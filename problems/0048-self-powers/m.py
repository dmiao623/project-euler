ans = 0
mod = 10 ** 10
for i in range(1, 1001):
	ans = (ans + pow(i, i, mod)) % mod
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()