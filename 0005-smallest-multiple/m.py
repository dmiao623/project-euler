import math

ans = 1
for i in range(1, 21):
	ans = math.lcm(ans, i)
with open('answer.txt', 'w+') as af:
	print(ans, file = af)
	af.close()