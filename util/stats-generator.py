#!/usr/bin/env python3

# TODO: add support for PE API

import os, re

totalNumProblems = 844
incompleteProblems = set([113, 386, 262, 94, 61, 88, 197, 227, 148])

problemFileRegex = re.compile(r'\d\d\d\d-[\w-]')
romanNumeralsRegex = re.compile(r' M{0,3}(CM|CD|D?C{0,3})(XC|XL|L?X{0,3})(IX|IV|V?I{0,3})$')
files = sorted(os.listdir('../problems'))

problemList = '<details><summary>List of Solved Problems</summary>\n\n'
numProblemsAttempted = 0
numProblemsSolved = 0
problemsSolved = [False] * (totalNumProblems + 1)

for fileName in files:
	if problemFileRegex.match(fileName):
		problemNumber = fileName[:4].lstrip('0')
		numProblemsAttempted += 1
		if int(problemNumber) in incompleteProblems:
			continue

		problemName = fileName[5].upper() + fileName[6:].replace('-', ' ')
		romanNumeralIndicies = [(m.start(0), m.end(0)) for m in romanNumeralsRegex.finditer(problemName.upper())]
		for l, r in romanNumeralIndicies:
			problemName = problemName[:l] + problemName[l:r].upper() + problemName[r:]

		numProblemsSolved += 1
		problemsSolved[int(problemNumber)] = fileName;
		problemList += f'- [{problemNumber}: {problemName}](problems/{fileName})\n'
problemList += '</details>\n'

problemTable = '<details><summary>Table of Solved Problems</summary>\n\n'
problemTable += '|<!---->' * 10 + '|\n' + '|:-----:' * 10 + '|\n'
for tensDigit in range(0, totalNumProblems, 10):
	problemExists = False
	for onesDigit in range(1, 11):
		problemNumber = tensDigit + onesDigit
		if problemNumber > totalNumProblems or not problemsSolved[problemNumber]:
			problemTable += '|'
		else:
			problemExists = True
			problemTable += f'|[{problemNumber}](problems/{problemsSolved[problemNumber]})'
	if not problemExists:
		problemTable += '<br>'
	problemTable += '|\n'
problemTable += '</details>\n'

prefix = r"""## Overview

This is a list of codes and solutions to [Project Euler](https://projecteuler.net/). The goal of this repository is twofold: to have a cloud-based backup of my codes in case my local copy ever becomes inaccessible, and to inspire by my code solutions. 

I consider internet resources such as [Wikipedia](https://en.wikipedia.org/wiki/Main_Page), [MathWorld](https://mathworld.wolfram.com/), and [OEIS](https://oeis.org/) fair game as long as it doesn't reference the Project Euler problem in particular. It is up to the problemsetter, and not the contestant, to set non-trivial problems that are not just a standard application of a theorem. Currently, I have tags disabled. 

![profile overview](https://projecteuler.net/profile/dutin.png)

## Code
My code is written in Julia, Python, Mathematica, and C++. You can find a (deprecated) list of my templates on [my blog](https://dustin-miao.github.io/) or [my code library](https://dustin-miao.github.io/library/). I have a list of commonly used [templates](library/templates) and [sequences](library/generators) specific to Project Euler in this repository, which I import as necessary in my solutions.  Finally, you can find codes for similar problems on my [CodeForces](https://codeforces.com/profile/dutin) or [AtCoder](https://atcoder.jp/users/dutinmeow) profiles. 

In my C++ codes I will sometimes import files from the [AtCoder Library](https://atcoder.github.io/ac-library/production/document_en/index.html). This is a library of templates for commonly used algorithm, the most useful of which is the [modular int](https://atcoder.github.io/ac-library/production/document_en/modint.html). 

I use a 2019 16-inch MacBook with a 2.6 GHz 6-Core Intel Core i7. Python codes are run using `python3`. C++ files are  compiled using `g++-12 m.cpp -std=c++20 -O2 -DLOCAL -I ${LIBRARY_PATH} -o m.out`, where `${LIBRARY_PATH}` is a local file path to a directory with the Atcoder Library and local utility files (including a debug template). On slower codes I will compile using `-O3` or `-Ofast` optimizations instead. I will generally try to abide by the "one-minute rule", in which a program to solve any given problem will take at most 60 seconds to run on a decent CPU. 

## Statistics

"""

suffix = r"""
Generated automatically using [stats-generator.py](util/stats-generator.py). 
"""

with open('../README.md', 'w+') as readmeFile:
	print(prefix, file = readmeFile)
	print(f'Problems Solved: {numProblemsSolved}\n', file = readmeFile)
	print(f'Problems Attempted: {numProblemsAttempted}\n', file = readmeFile)
	print(problemList, file = readmeFile)
	print(problemTable, file = readmeFile)
	print(suffix, file = readmeFile)