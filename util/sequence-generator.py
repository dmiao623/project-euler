# TODO: handle dependencies automatically

import os
from time import time
from colorama import Fore, Style

generatorRelativePath = '../library/generators/'
sequenceRelativePath = '../sequences/'

stime = time()
print(Fore.GREEN + 'generating files...' + Style.RESET_ALL)

os.chdir(os.getcwd() + '/' + generatorRelativePath)

generatorFiles = sorted(os.listdir('.'))
for generatorFile in generatorFiles:
	seperatorPos = generatorFile.rfind('.')
	fileName = generatorFile[:seperatorPos]
	fileExtention = generatorFile[seperatorPos+1:]
	if fileExtention == 'cpp':
		print(Fore.GREEN + f'\nrunning generator \'{generatorFile}\':' + Style.RESET_ALL)
		os.system(f'g++-12 \'{generatorFile}\' -std=c++20 -O3 -o temp.out')
		os.system(f'./temp.out -f \'{sequenceRelativePath}{fileName}.txt\'')
		os.system('rm temp.out')
	elif fileExtention == 'py':
		print(Fore.GREEN + f'\nrunning generator \'{generatorFile}\':' + Style.RESET_ALL)
		os.system(f'python3 \'{generatorFile}\' -f \'{sequenceRelativePath}{fileName}.txt\'')

print(Fore.GREEN + f'\nfinished generating files\ntime taken: {round(time() - stime)} seconds' + Style.RESET_ALL)