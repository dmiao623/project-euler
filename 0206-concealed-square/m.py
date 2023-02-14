import re

for s in range(10 ** 9, 10 ** 10, 10):
	t = str(s * s)
	if len(t) > 19:
		exit(0)
	if re.search('1.2.3.4.5.6.7.8.9.0', t):
		with open('answer.txt', 'w+') as af:
			print(s, file = af)
			af.close()
		exit(0)
