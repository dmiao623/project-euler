from num2words import num2words

ans = 0
for i in range(1, 1001):
	s = num2words(i)
	ans += len(s.replace(' ', '').replace('-', ''))
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()