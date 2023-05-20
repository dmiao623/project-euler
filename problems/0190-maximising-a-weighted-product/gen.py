def generate(n):
	s1, s2, s3, s4 = '', '', '', ''
	for i in range(1, n + 1):
		s1 += f'a{i}^{i}'
		s2 += f'0<=a{i},'
		s3 += f'a{i}'
		s4 += f'a{i}'
		if i != n:
			s1 += '*'
			s3 += '+'
			s4 += ','
		else:
			s3 += f'=={n}'
	return f'Maximize[{{{s1},{s2}{s3}}},{{{s4}}}][[1]]'
print(generate(8))