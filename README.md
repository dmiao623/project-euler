## Overview
This is a list of codes and solutions to [Project Euler](https://projecteuler.net/). The goal of this repository is twofold: to have a cloud-based backup of my codes in case my local copy ever becomes inaccessible, and to provide others with a chance to be inspired by my code solutions. 

## Solutions
I tend to be better at problems involving data structures, graph theory algorithms, and dynamic programming (more "typical" competitive programming topics), though I'm also interested in number theoretic algorithms. It should be noted that I have no formal academic training in math or CS. 

I consider internet resources such as [Wikipedia](https://en.wikipedia.org/wiki/Main_Page), [MathWorld](https://mathworld.wolfram.com/), and [OEIS](https://oeis.org/) fair game as long as it does not pertain to the Project Euler problem in particular. It is up to the problemsetter, and not the contestant, to set non-trivial problems that are not just a standard application of a theorem. 

I do not solve problems in any particular order; in general, I do whatever interests me. However, I tend to limit myself to the first 300 problems as they are more suited to my difficluty range. 

## Code
My code is written in Python (for convenience) or C++ (for speed). You can find a (deprecated) list of my templates on [my blog](https://dustin-miao.github.io/) or [my code library](https://dustin-miao.github.io/library/). I have a list of commonly used [templates][templates] and [sequences](sequences) specific to Project Euler in this repository, which I import as necessary in my solutions.  You can also find codes on my [CodeForces](https://codeforces.com/profile/dutin) or [AtCoder](https://atcoder.jp/users/dutinmeow) profile. 

In my C++ codes I will sometimes import files from the [AtCoder Library](https://atcoder.github.io/ac-library/production/document_en/index.html). This is a list of templates for commonly used algorithm, the most useful of which is the [modular int](https://atcoder.github.io/ac-library/production/document_en/modint.html). 

I use a 2019 16-inch MacBook with a 2.6 GHz 6-Core Intel Core i7. Python codes are run using `python3`. C++ files are  compiled using `g++-12 m.cpp -std=c++20 -O2 -DLOCAL -I ${LIBRARY_PATH} -o m.out`, where `${LIBRARY_PATH}` is a local file path to a directory with the Atcoder Library and local utility files (including a debug template). On slower codes I will compile using `-O3` or `-Ofast` optimizations instead. 

I will generally try to abide by the "one-minute rule", in which a program to solve any given problem will take at most 60 seconds to run on a decent CPU. The solutions that take more than one minute are listed below:
- [A lagged Fibonacci sequence](https://projecteuler.net/problem=258) 

## Statistics
TODO
