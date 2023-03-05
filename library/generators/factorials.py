import sys, getopt
from time import time

def factorials(n):
	f = [0] * (n + 1)
	f[0] = 1
	for i in range(1, n + 1):
		f[i] = f[i - 1] * i
	return f

if __name__ == '__main__':
	stime = time()

	try:
		opts, args = getopt.getopt(sys.argv[1:], 'n:f:')
	except getopt.GetoptError:
		print('factorials.py -n <length> -f <output file>')
		sys.exit(2)

	n = 1_000
	fpath = ''
	for opt, arg in opts:
		if opt == '-n':
			n = int(arg)
		elif opt == '-f':
			fpath = arg
	assert fpath != ''

	fac = factorials(n)
	with open(fpath, 'w+') as of:
		for x in fac:
			print(x, file = of)
		of.close()

	print(f'terms : {n}\nfile  : \'{fpath}\'\ntime  : {round(time() - stime)} seconds')
