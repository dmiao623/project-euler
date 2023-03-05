a, b = 1, 2
ans = 0
while b <= 4000000:
	ans += b if b % 2 == 0 else 0
	a, b = b, a + b
with open('answer.txt', 'w+') as af:
	print(ans, file = af)