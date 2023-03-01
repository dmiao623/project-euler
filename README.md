## Overview
This is a list of codes and solutions to [Project Euler](https://projecteuler.net/). The goal of this repository is twofold: to have a cloud-based backup of my codes in case my local copy ever becomes inaccessible, and to provide others with a chance to be inspired by my code solutions. 

## Solutions
I tend to be better at problems involving data structures, graph theory algorithms, and dynamic programming (more "typical" competitive programming topics), though I'm also interested in number theoretic algorithms. It should be noted that I have no formal academic training in math or CS. 

I consider internet resources such as [Wikipedia](https://en.wikipedia.org/wiki/Main_Page), [MathWorld](https://mathworld.wolfram.com/), and [OEIS](https://oeis.org/) fair game as long as it does not pertain to the Project Euler problem in particular. It is up to the problemsetter, and not the contestant, to set non-trivial problems that are not just a standard application of a theorem. 

I do not solve problems in any particular order; in general, I do whatever interests me. However, I tend to limit myself to the first 300 problems as they are more suited to my difficluty range. 

## Code
My code is written in Python (for convenience) or C++ (for speed). You can find a (deprecated) list of my templates on [my blog](https://dustin-miao.github.io/) or [my code library](https://dustin-miao.github.io/library/). I have a list of commonly used [templates](templates) and [sequences](sequences) specific to Project Euler in this repository, which I import as necessary in my solutions.  Finally, you can find codes on my [CodeForces](https://codeforces.com/profile/dutin) or [AtCoder](https://atcoder.jp/users/dutinmeow) profile. 

In my C++ codes I will sometimes import files from the [AtCoder Library](https://atcoder.github.io/ac-library/production/document_en/index.html). This is a list of templates for commonly used algorithm, the most useful of which is the [modular int](https://atcoder.github.io/ac-library/production/document_en/modint.html). 

I use a 2019 16-inch MacBook with a 2.6 GHz 6-Core Intel Core i7. Python codes are run using `python3`. C++ files are  compiled using `g++-12 m.cpp -std=c++20 -O2 -DLOCAL -I ${LIBRARY_PATH} -o m.out`, where `${LIBRARY_PATH}` is a local file path to a directory with the Atcoder Library and local utility files (including a debug template). On slower codes I will compile using `-O3` or `-Ofast` optimizations instead. 

I will generally try to abide by the "one-minute rule", in which a program to solve any given problem will take at most 60 seconds to run on a decent CPU. The solutions that take more than one minute are listed below:
- [A lagged Fibonacci sequence](https://projecteuler.net/problem=258) 

## Statistics

 <details><summary>Full List of Solved Problems</summary>
- [0001: multiples of 3 or 5](0001-multiples-of-3-or-5)
- [0002: even fibonacci numbers](0002-even-fibonacci-numbers)
- [0003: largest prime factor](0003-largest-prime-factor)
- [0004: largest palindrome product](0004-largest-palindrome-product)
- [0005: smallest multiple](0005-smallest-multiple)
- [0006: sum square difference](0006-sum-square-difference)
- [0007: 10001st prime](0007-10001st-prime)
- [0008: largest product in a series](0008-largest-product-in-a-series)
- [0009: special pythagorean triple](0009-special-pythagorean-triple)
- [0010: summation of primes](0010-summation-of-primes)
- [0011: largest product in a grid](0011-largest-product-in-a-grid)
- [0012: highly divisible triangular number](0012-highly-divisible-triangular-number)
- [0013: large sum](0013-large-sum)
- [0014: longest collatz sequence](0014-longest-collatz-sequence)
- [0015: lattice paths](0015-lattice-paths)
- [0016: power digit sum](0016-power-digit-sum)
- [0017: number letter counts](0017-number-letter-counts)
- [0018: maximum path sum i](0018-maximum-path-sum-i)
- [0019: counting sundays](0019-counting-sundays)
- [0020: factorial digit sum](0020-factorial-digit-sum)
- [0021: amicable numbers](0021-amicable-numbers)
- [0022: names score](0022-names-score)
- [0023: non abundant sums](0023-non-abundant-sums)
- [0024: lexicographic permutations](0024-lexicographic-permutations)
- [0025: 1000 digit fibonacci number](0025-1000-digit-fibonacci-number)
- [0026: reciprocal cycles](0026-reciprocal-cycles)
- [0027: quadratic primes](0027-quadratic-primes)
- [0028: number spiral diagonals](0028-number-spiral-diagonals)
- [0029: distinct powers](0029-distinct-powers)
- [0030: digit fifth powers](0030-digit-fifth-powers)
- [0031: coin sums](0031-coin-sums)
- [0032: pandigital products](0032-pandigital-products)
- [0033: digit cancelling fractions](0033-digit-cancelling-fractions)
- [0034: digit factorials](0034-digit-factorials)
- [0035: circular primes](0035-circular-primes)
- [0036: double base polindrome](0036-double-base-polindrome)
- [0037: truncatable primes](0037-truncatable-primes)
- [0038: pandigital multiples](0038-pandigital-multiples)
- [0040: champernownes constant](0040-champernownes-constant)
- [0042: coded triangle numbers](0042-coded-triangle-numbers)
- [0044: pentagon numbers](0044-pentagon-numbers)
- [0045: triangular pentagonal and hexagonal](0045-triangular-pentagonal-and-hexagonal)
- [0047: distinct prime factors](0047-distinct-prime-factors)
- [0048: self powers](0048-self-powers)
- [0049: prime permutations](0049-prime-permutations)
- [0050: consecutive prime sum](0050-consecutive-prime-sum)
- [0051: prime digit replacements](0051-prime-digit-replacements)
- [0052: permuted multiples](0052-permuted-multiples)
- [0053: combinatoric selections](0053-combinatoric-selections)
- [0054: poker hands](0054-poker-hands)
- [0055: lychrel numbers](0055-lychrel-numbers)
- [0056: powerful digit sum](0056-powerful-digit-sum)
- [0057: square roots convergents](0057-square-roots-convergents)
- [0058: spiral primes](0058-spiral-primes)
- [0059: xor decryption](0059-xor-decryption)
- [0067: maximum path sum ii](0067-maximum-path-sum-ii)
- [0068: magic 5 gon ring](0068-magic-5-gon-ring)
- [0069: totient maximum](0069-totient-maximum)
- [0070: totient permutation](0070-totient-permutation)
- [0071: ordered fractions](0071-ordered-fractions)
- [0072: counting fractions](0072-counting-fractions)
- [0074: digit factorial chains](0074-digit-factorial-chains)
- [0075: singular integer right triangles](0075-singular-integer-right-triangles)
- [0076: counting summations](0076-counting-summations)
- [0081: path sum two ways](0081-path-sum-two-ways)
- [0082: path sum three ways](0082-path-sum-three-ways)
- [0083: path sum four ways](0083-path-sum-four-ways)
- [0085: counting rectangles](0085-counting-rectangles)
- [0087: prime power triples](0087-prime-power-triples)
- [0092: square digit chains](0092-square-digit-chains)
- [0096: su doku](0096-su-doku)
- [0097: large non mersenne prime](0097-large-non-mersenne-prime)
- [0099: largest exponential](0099-largest-exponential)
- [0102: triangle containment](0102-triangle-containment)
- [0104: pandigital fibonacci ends](0104-pandigital-fibonacci-ends)
- [0113: non bouncy numbers](0113-non-bouncy-numbers)
- [0114: counting block combinations i](0114-counting-block-combinations-i)
- [0115: counting block combinations ii](0115-counting-block-combinations-ii)
- [0116: red green or blue tiles](0116-red-green-or-blue-tiles)
- [0117: red green and blue tiles](0117-red-green-and-blue-tiles)
- [0158: exploring strings for which only one character comes lexicographically after its neighbor to the left](0158-exploring-strings-for-which-only-one-character-comes-lexicographically-after-its-neighbor-to-the-left)
- [0179: consecutive positive divisors](0179-consecutive-positive-divisors)
- [0191: prize strings](0191-prize-strings)
- [0204: generalised hamming numbers](0204-generalised-hamming-numbers)
- [0205: dice game](0205-dice-game)
- [0206: concealed square](0206-concealed-square)
- [0258: a lagged fibonacci sequence](0258-a-lagged-fibonacci-sequence)
- [0301: nim](0301-nim)
- [0386: maximum length of an antichain](0386-maximum-length-of-an-antichain)
- [0497: drunken tower of hanoi](0497-drunken-tower-of-hanoi)
- [0500: problem 500](0500-problem-500)
- [0686: powers of two](0686-powers-of-two)
- [0808: reversible prime squares](0808-reversible-prime-squares)
- [0816: shortest distance among points](0816-shortest-distance-among-points)
</details> 

