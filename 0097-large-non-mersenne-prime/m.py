mod = 10 ** 10
with open('answer.txt', 'w+') as af:
	print((28433 * pow(2, 7830457, mod) + 1) % mod, file = af)