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
- [258: A lagged fibonacci sequence](https://projecteuler.net/problem=258) 

## Statistics


Problems Solved: 91
Problems Attempted: 94
<details><summary>List of Solved Problems</summary>

- [1: multiples of 3 or 5](0001-multiples-of-3-or-5)
- [2: even fibonacci numbers](0002-even-fibonacci-numbers)
- [3: largest prime factor](0003-largest-prime-factor)
- [4: largest palindrome product](0004-largest-palindrome-product)
- [5: smallest multiple](0005-smallest-multiple)
- [6: sum square difference](0006-sum-square-difference)
- [7: 10001st prime](0007-10001st-prime)
- [8: largest product in a series](0008-largest-product-in-a-series)
- [9: special pythagorean triple](0009-special-pythagorean-triple)
- [10: summation of primes](0010-summation-of-primes)
- [11: largest product in a grid](0011-largest-product-in-a-grid)
- [12: highly divisible triangular number](0012-highly-divisible-triangular-number)
- [13: large sum](0013-large-sum)
- [14: longest collatz sequence](0014-longest-collatz-sequence)
- [15: lattice paths](0015-lattice-paths)
- [16: power digit sum](0016-power-digit-sum)
- [17: number letter counts](0017-number-letter-counts)
- [18: maximum path sum i](0018-maximum-path-sum-i)
- [19: counting sundays](0019-counting-sundays)
- [20: factorial digit sum](0020-factorial-digit-sum)
- [21: amicable numbers](0021-amicable-numbers)
- [22: names score](0022-names-score)
- [23: non abundant sums](0023-non-abundant-sums)
- [24: lexicographic permutations](0024-lexicographic-permutations)
- [25: 1000 digit fibonacci number](0025-1000-digit-fibonacci-number)
- [26: reciprocal cycles](0026-reciprocal-cycles)
- [27: quadratic primes](0027-quadratic-primes)
- [28: number spiral diagonals](0028-number-spiral-diagonals)
- [29: distinct powers](0029-distinct-powers)
- [30: digit fifth powers](0030-digit-fifth-powers)
- [31: coin sums](0031-coin-sums)
- [32: pandigital products](0032-pandigital-products)
- [33: digit cancelling fractions](0033-digit-cancelling-fractions)
- [34: digit factorials](0034-digit-factorials)
- [35: circular primes](0035-circular-primes)
- [36: double base polindrome](0036-double-base-polindrome)
- [37: truncatable primes](0037-truncatable-primes)
- [38: pandigital multiples](0038-pandigital-multiples)
- [40: champernownes constant](0040-champernownes-constant)
- [42: coded triangle numbers](0042-coded-triangle-numbers)
- [44: pentagon numbers](0044-pentagon-numbers)
- [45: triangular pentagonal and hexagonal](0045-triangular-pentagonal-and-hexagonal)
- [47: distinct prime factors](0047-distinct-prime-factors)
- [48: self powers](0048-self-powers)
- [49: prime permutations](0049-prime-permutations)
- [50: consecutive prime sum](0050-consecutive-prime-sum)
- [51: prime digit replacements](0051-prime-digit-replacements)
- [52: permuted multiples](0052-permuted-multiples)
- [53: combinatoric selections](0053-combinatoric-selections)
- [54: poker hands](0054-poker-hands)
- [55: lychrel numbers](0055-lychrel-numbers)
- [56: powerful digit sum](0056-powerful-digit-sum)
- [57: square roots convergents](0057-square-roots-convergents)
- [58: spiral primes](0058-spiral-primes)
- [59: xor decryption](0059-xor-decryption)
- [67: maximum path sum ii](0067-maximum-path-sum-ii)
- [68: magic 5 gon ring](0068-magic-5-gon-ring)
- [69: totient maximum](0069-totient-maximum)
- [70: totient permutation](0070-totient-permutation)
- [71: ordered fractions](0071-ordered-fractions)
- [72: counting fractions](0072-counting-fractions)
- [74: digit factorial chains](0074-digit-factorial-chains)
- [75: singular integer right triangles](0075-singular-integer-right-triangles)
- [76: counting summations](0076-counting-summations)
- [81: path sum two ways](0081-path-sum-two-ways)
- [82: path sum three ways](0082-path-sum-three-ways)
- [83: path sum four ways](0083-path-sum-four-ways)
- [85: counting rectangles](0085-counting-rectangles)
- [87: prime power triples](0087-prime-power-triples)
- [92: square digit chains](0092-square-digit-chains)
- [96: su doku](0096-su-doku)
- [97: large non mersenne prime](0097-large-non-mersenne-prime)
- [99: largest exponential](0099-largest-exponential)
- [102: triangle containment](0102-triangle-containment)
- [104: pandigital fibonacci ends](0104-pandigital-fibonacci-ends)
- [114: counting block combinations i](0114-counting-block-combinations-i)
- [115: counting block combinations ii](0115-counting-block-combinations-ii)
- [116: red green or blue tiles](0116-red-green-or-blue-tiles)
- [117: red green and blue tiles](0117-red-green-and-blue-tiles)
- [179: consecutive positive divisors](0179-consecutive-positive-divisors)
- [191: prize strings](0191-prize-strings)
- [204: generalised hamming numbers](0204-generalised-hamming-numbers)
- [205: dice game](0205-dice-game)
- [206: concealed square](0206-concealed-square)
- [258: a lagged fibonacci sequence](0258-a-lagged-fibonacci-sequence)
- [301: nim](0301-nim)
- [386: maximum length of an antichain](0386-maximum-length-of-an-antichain)
- [497: drunken tower of hanoi](0497-drunken-tower-of-hanoi)
- [500: problem 500](0500-problem-500)
- [686: powers of two](0686-powers-of-two)
- [808: reversible prime squares](0808-reversible-prime-squares)
</details>

<details><summary>Table of Solved Problems</summary>

|<!---->|<!---->|<!---->|<!---->|<!---->|<!---->|<!---->|<!---->|<!---->|<!---->|
|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|
||[1](0001-multiples-of-3-or-5)||[2](0002-even-fibonacci-numbers)||[3](0003-largest-prime-factor)||[4](0004-largest-palindrome-product)||[5](0005-smallest-multiple)||[6](0006-sum-square-difference)||[7](0007-10001st-prime)||[8](0008-largest-product-in-a-series)||[9](0009-special-pythagorean-triple)||
|[10](0010-summation-of-primes)||[11](0011-largest-product-in-a-grid)||[12](0012-highly-divisible-triangular-number)||[13](0013-large-sum)||[14](0014-longest-collatz-sequence)||[15](0015-lattice-paths)||[16](0016-power-digit-sum)||[17](0017-number-letter-counts)||[18](0018-maximum-path-sum-i)||[19](0019-counting-sundays)||
|[20](0020-factorial-digit-sum)||[21](0021-amicable-numbers)||[22](0022-names-score)||[23](0023-non-abundant-sums)||[24](0024-lexicographic-permutations)||[25](0025-1000-digit-fibonacci-number)||[26](0026-reciprocal-cycles)||[27](0027-quadratic-primes)||[28](0028-number-spiral-diagonals)||[29](0029-distinct-powers)||
|[30](0030-digit-fifth-powers)||[31](0031-coin-sums)||[32](0032-pandigital-products)||[33](0033-digit-cancelling-fractions)||[34](0034-digit-factorials)||[35](0035-circular-primes)||[36](0036-double-base-polindrome)||[37](0037-truncatable-primes)||[38](0038-pandigital-multiples)|||
|[40](0040-champernownes-constant)|||[42](0042-coded-triangle-numbers)|||[44](0044-pentagon-numbers)||[45](0045-triangular-pentagonal-and-hexagonal)|||[47](0047-distinct-prime-factors)||[48](0048-self-powers)||[49](0049-prime-permutations)||
|[50](0050-consecutive-prime-sum)||[51](0051-prime-digit-replacements)||[52](0052-permuted-multiples)||[53](0053-combinatoric-selections)||[54](0054-poker-hands)||[55](0055-lychrel-numbers)||[56](0056-powerful-digit-sum)||[57](0057-square-roots-convergents)||[58](0058-spiral-primes)||[59](0059-xor-decryption)||
||||||||[67](0067-maximum-path-sum-ii)||[68](0068-magic-5-gon-ring)||[69](0069-totient-maximum)||
|[70](0070-totient-permutation)||[71](0071-ordered-fractions)||[72](0072-counting-fractions)|||[74](0074-digit-factorial-chains)||[75](0075-singular-integer-right-triangles)||[76](0076-counting-summations)|||||
||[81](0081-path-sum-two-ways)||[82](0082-path-sum-three-ways)||[83](0083-path-sum-four-ways)|||[85](0085-counting-rectangles)|||[87](0087-prime-power-triples)||||
|||[92](0092-square-digit-chains)|||||[96](0096-su-doku)||[97](0097-large-non-mersenne-prime)|||[99](0099-largest-exponential)||
|||[102](0102-triangle-containment)|||[104](0104-pandigital-fibonacci-ends)|||||||
|||||[114](0114-counting-block-combinations-i)||[115](0115-counting-block-combinations-ii)||[116](0116-red-green-or-blue-tiles)||[117](0117-red-green-and-blue-tiles)||||
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||[179](0179-consecutive-positive-divisors)||
||||||||||<br>|
||[191](0191-prize-strings)||||||||||
|||||[204](0204-generalised-hamming-numbers)||[205](0205-dice-game)||[206](0206-concealed-square)|||||
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
|||||||||[258](0258-a-lagged-fibonacci-sequence)|||
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||[301](0301-nim)||||||||||
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
|||||||[386](0386-maximum-length-of-an-antichain)|||||
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||[497](0497-drunken-tower-of-hanoi)||||
|[500](0500-problem-500)|||||||||||
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
|||||||[686](0686-powers-of-two)|||||
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
|||||||||[808](0808-reversible-prime-squares)|||
||||||||||<br>|
||||||||||<br>|
</details>



