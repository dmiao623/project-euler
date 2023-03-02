## Overview
This is a list of codes and solutions to [Project Euler](https://projecteuler.net/). The goal of this repository is twofold: to have a cloud-based backup of my codes in case my local copy ever becomes inaccessible, and to provide others with a chance to be inspired by my code solutions. 

## Solution
I tend to be better at problems involving data structures, graph theory algorithms, and dynamic programming (more "typical" competitive programming topics), though I'm also interested in number theoretic algorithms. It should be noted that I have no formal academic training in math or CS. 

I consider internet resources such as [Wikipedia](https://en.wikipedia.org/wiki/Main_Page), [MathWorld](https://mathworld.wolfram.com/), and [OEIS](https://oeis.org/) fair game as long as it does not pertain to the Project Euler problem in particular. It is up to the problemsetter, and not the contestant, to set non-trivial problems that are not just a standard application of a theorem. 

I do not solve problems in any particular order; in general, I do whatever interests me. However, I tend to limit myself to the first 300 problems as they are more suited to my difficluty range. 

## Code
My code is written in Python (for convenience) or C++ (for speed). You can find a (deprecated) list of my templates on [my blog](https://dustin-miao.github.io/) or [my code library](https://dustin-miao.github.io/library/). I have a list of commonly used [templates](templates) and [sequences](sequences) specific to Project Euler in this repository, which I import as necessary in my solutions.  Finally, you can find codes on my [CodeForces](https://codeforces.com/profile/dutin) or [AtCoder](https://atcoder.jp/users/dutinmeow) profile. 

In my C++ codes I will sometimes import files from the [AtCoder Library](https://atcoder.github.io/ac-library/production/document_en/index.html). This is a library of templates for commonly used algorithm, the most useful of which is the [modular int](https://atcoder.github.io/ac-library/production/document_en/modint.html). 

I use a 2019 16-inch MacBook with a 2.6 GHz 6-Core Intel Core i7. Python codes are run using `python3`. C++ files are  compiled using `g++-12 m.cpp -std=c++20 -O2 -DLOCAL -I ${LIBRARY_PATH} -o m.out`, where `${LIBRARY_PATH}` is a local file path to a directory with the Atcoder Library and local utility files (including a debug template). On slower codes I will compile using `-O3` or `-Ofast` optimizations instead. I will generally try to abide by the "one-minute rule", in which a program to solve any given problem will take at most 60 seconds to run on a decent CPU. 

## Statistics


Problems Solved: 95

Problems Attempted: 99

<details><summary>List of Solved Problems</summary>

- [1: Multiples of 3 or 5](0001-multiples-of-3-or-5)
- [2: Even fibonacci numbers](0002-even-fibonacci-numbers)
- [3: Largest prime factor](0003-largest-prime-factor)
- [4: Largest palindrome product](0004-largest-palindrome-product)
- [5: Smallest multiple](0005-smallest-multiple)
- [6: Sum square difference](0006-sum-square-difference)
- [7: 10001st prime](0007-10001st-prime)
- [8: Largest product in a series](0008-largest-product-in-a-series)
- [9: Special pythagorean triple](0009-special-pythagorean-triple)
- [10: Summation of primes](0010-summation-of-primes)
- [11: Largest product in a grid](0011-largest-product-in-a-grid)
- [12: Highly divisible triangular number](0012-highly-divisible-triangular-number)
- [13: Large sum](0013-large-sum)
- [14: Longest collatz sequence](0014-longest-collatz-sequence)
- [15: Lattice paths](0015-lattice-paths)
- [16: Power digit sum](0016-power-digit-sum)
- [17: Number letter counts](0017-number-letter-counts)
- [18: Maximum path sum I](0018-maximum-path-sum-i)
- [19: Counting sundays](0019-counting-sundays)
- [20: Factorial digit sum](0020-factorial-digit-sum)
- [21: Amicable numbers](0021-amicable-numbers)
- [22: Names score](0022-names-score)
- [23: Non abundant sums](0023-non-abundant-sums)
- [24: Lexicographic permutations](0024-lexicographic-permutations)
- [25: 1000 digit fibonacci number](0025-1000-digit-fibonacci-number)
- [26: Reciprocal cycles](0026-reciprocal-cycles)
- [27: Quadratic primes](0027-quadratic-primes)
- [28: Number spiral diagonals](0028-number-spiral-diagonals)
- [29: Distinct powers](0029-distinct-powers)
- [30: Digit fifth powers](0030-digit-fifth-powers)
- [31: Coin sums](0031-coin-sums)
- [32: Pandigital products](0032-pandigital-products)
- [33: Digit cancelling fractions](0033-digit-cancelling-fractions)
- [34: Digit factorials](0034-digit-factorials)
- [35: Circular primes](0035-circular-primes)
- [36: Double base polindrome](0036-double-base-polindrome)
- [37: Truncatable primes](0037-truncatable-primes)
- [38: Pandigital multiples](0038-pandigital-multiples)
- [39: Integer right triangles](0039-integer-right-triangles)
- [40: Champernownes constant](0040-champernownes-constant)
- [41: Pandigital prime](0041-pandigital-prime)
- [42: Coded triangle numbers](0042-coded-triangle-numbers)
- [43: Sub string divisibility](0043-sub-string-divisibility)
- [44: Pentagon numbers](0044-pentagon-numbers)
- [45: Triangular pentagonal and hexagonal](0045-triangular-pentagonal-and-hexagonal)
- [46: Goldbacks other conjecture](0046-goldbacks-other-conjecture)
- [47: Distinct prime factors](0047-distinct-prime-factors)
- [48: Self powers](0048-self-powers)
- [49: Prime permutations](0049-prime-permutations)
- [50: Consecutive prime sum](0050-consecutive-prime-sum)
- [51: Prime digit replacements](0051-prime-digit-replacements)
- [52: Permuted multiples](0052-permuted-multiples)
- [53: Combinatoric selections](0053-combinatoric-selections)
- [54: Poker hands](0054-poker-hands)
- [55: Lychrel numbers](0055-lychrel-numbers)
- [56: Powerful digit sum](0056-powerful-digit-sum)
- [57: Square roots convergents](0057-square-roots-convergents)
- [58: Spiral primes](0058-spiral-primes)
- [59: Xor decryption](0059-xor-decryption)
- [67: Maximum path sum II](0067-maximum-path-sum-ii)
- [68: Magic 5 gon ring](0068-magic-5-gon-ring)
- [69: Totient maximum](0069-totient-maximum)
- [70: Totient permutation](0070-totient-permutation)
- [71: Ordered fractions](0071-ordered-fractions)
- [72: Counting fractions](0072-counting-fractions)
- [74: Digit factorial chains](0074-digit-factorial-chains)
- [75: Singular integer right triangles](0075-singular-integer-right-triangles)
- [76: Counting summations](0076-counting-summations)
- [81: Path sum two ways](0081-path-sum-two-ways)
- [82: Path sum three ways](0082-path-sum-three-ways)
- [83: Path sum four ways](0083-path-sum-four-ways)
- [85: Counting rectangles](0085-counting-rectangles)
- [87: Prime power triples](0087-prime-power-triples)
- [92: Square digit chains](0092-square-digit-chains)
- [96: Su doku](0096-su-doku)
- [97: Large non mersenne prime](0097-large-non-mersenne-prime)
- [99: Largest exponential](0099-largest-exponential)
- [102: Triangle containment](0102-triangle-containment)
- [104: Pandigital fibonacci ends](0104-pandigital-fibonacci-ends)
- [114: Counting block combinations I](0114-counting-block-combinations-i)
- [115: Counting block combinations II](0115-counting-block-combinations-ii)
- [116: Red green or blue tiles](0116-red-green-or-blue-tiles)
- [117: Red green and blue tiles](0117-red-green-and-blue-tiles)
- [179: Consecutive positive divisors](0179-consecutive-positive-divisors)
- [191: Prize strings](0191-prize-strings)
- [204: Generalised hamming numbers](0204-generalised-hamming-numbers)
- [205: Dice game](0205-dice-game)
- [206: Concealed square](0206-concealed-square)
- [258: A lagged fibonacci sequence](0258-a-lagged-fibonacci-sequence)
- [301: Nim](0301-nim)
- [411: Uphill paths](0411-uphill-paths)
- [497: Drunken tower of hanoi](0497-drunken-tower-of-hanoi)
- [500: Problem 500](0500-problem-500)
- [686: Powers of two](0686-powers-of-two)
- [808: Reversible prime squares](0808-reversible-prime-squares)
</details>

<details><summary>Table of Solved Problems</summary>

|<!---->|<!---->|<!---->|<!---->|<!---->|<!---->|<!---->|<!---->|<!---->|<!---->|
|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|
|[1](0001-multiples-of-3-or-5)|[2](0002-even-fibonacci-numbers)|[3](0003-largest-prime-factor)|[4](0004-largest-palindrome-product)|[5](0005-smallest-multiple)|[6](0006-sum-square-difference)|[7](0007-10001st-prime)|[8](0008-largest-product-in-a-series)|[9](0009-special-pythagorean-triple)|[10](0010-summation-of-primes)|
|[11](0011-largest-product-in-a-grid)|[12](0012-highly-divisible-triangular-number)|[13](0013-large-sum)|[14](0014-longest-collatz-sequence)|[15](0015-lattice-paths)|[16](0016-power-digit-sum)|[17](0017-number-letter-counts)|[18](0018-maximum-path-sum-i)|[19](0019-counting-sundays)|[20](0020-factorial-digit-sum)|
|[21](0021-amicable-numbers)|[22](0022-names-score)|[23](0023-non-abundant-sums)|[24](0024-lexicographic-permutations)|[25](0025-1000-digit-fibonacci-number)|[26](0026-reciprocal-cycles)|[27](0027-quadratic-primes)|[28](0028-number-spiral-diagonals)|[29](0029-distinct-powers)|[30](0030-digit-fifth-powers)|
|[31](0031-coin-sums)|[32](0032-pandigital-products)|[33](0033-digit-cancelling-fractions)|[34](0034-digit-factorials)|[35](0035-circular-primes)|[36](0036-double-base-polindrome)|[37](0037-truncatable-primes)|[38](0038-pandigital-multiples)|[39](0039-integer-right-triangles)|[40](0040-champernownes-constant)|
|[41](0041-pandigital-prime)|[42](0042-coded-triangle-numbers)|[43](0043-sub-string-divisibility)|[44](0044-pentagon-numbers)|[45](0045-triangular-pentagonal-and-hexagonal)|[46](0046-goldbacks-other-conjecture)|[47](0047-distinct-prime-factors)|[48](0048-self-powers)|[49](0049-prime-permutations)|[50](0050-consecutive-prime-sum)|
|[51](0051-prime-digit-replacements)|[52](0052-permuted-multiples)|[53](0053-combinatoric-selections)|[54](0054-poker-hands)|[55](0055-lychrel-numbers)|[56](0056-powerful-digit-sum)|[57](0057-square-roots-convergents)|[58](0058-spiral-primes)|[59](0059-xor-decryption)||
|||||||[67](0067-maximum-path-sum-ii)|[68](0068-magic-5-gon-ring)|[69](0069-totient-maximum)|[70](0070-totient-permutation)|
|[71](0071-ordered-fractions)|[72](0072-counting-fractions)||[74](0074-digit-factorial-chains)|[75](0075-singular-integer-right-triangles)|[76](0076-counting-summations)|||||
|[81](0081-path-sum-two-ways)|[82](0082-path-sum-three-ways)|[83](0083-path-sum-four-ways)||[85](0085-counting-rectangles)||[87](0087-prime-power-triples)||||
||[92](0092-square-digit-chains)||||[96](0096-su-doku)|[97](0097-large-non-mersenne-prime)||[99](0099-largest-exponential)||
||[102](0102-triangle-containment)||[104](0104-pandigital-fibonacci-ends)|||||||
||||[114](0114-counting-block-combinations-i)|[115](0115-counting-block-combinations-ii)|[116](0116-red-green-or-blue-tiles)|[117](0117-red-green-and-blue-tiles)||||
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
|||||||||[179](0179-consecutive-positive-divisors)||
||||||||||<br>|
|[191](0191-prize-strings)||||||||||
||||[204](0204-generalised-hamming-numbers)|[205](0205-dice-game)|[206](0206-concealed-square)|||||
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||[258](0258-a-lagged-fibonacci-sequence)|||
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
|[301](0301-nim)||||||||||
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
|[411](0411-uphill-paths)||||||||||
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
|||||||[497](0497-drunken-tower-of-hanoi)|||[500](0500-problem-500)|
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
||||||||||<br>|
||||||[686](0686-powers-of-two)|||||
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
||||||||[808](0808-reversible-prime-squares)|||
||||||||||<br>|
||||||||||<br>|
</details>


Generated automatically using [stats-generator.py](stats-generator.py). 

