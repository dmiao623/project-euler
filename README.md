## Overview
This is a list of codes and solutions to [Project Euler](https://projecteuler.net/). The goal of this repository is twofold: to have a cloud-based backup of my codes in case my local copy ever becomes inaccessible, and to provide others with a chance to be inspired by my code solutions. 

## Solution
I tend to be better at problems involving data structures, graph theory algorithms, and dynamic programming (more "typical" competitive programming topics), though I'm also interested in number theoretic algorithms. It should be noted that I have no formal academic training in math or CS. 

I consider internet resources such as [Wikipedia](https://en.wikipedia.org/wiki/Main_Page), [MathWorld](https://mathworld.wolfram.com/), and [OEIS](https://oeis.org/) fair game as long as it does not pertain to the Project Euler problem in particular. It is up to the problemsetter, and not the contestant, to set non-trivial problems that are not just a standard application of a theorem. Currently, I have tags disabled. 

I do not solve problems in any particular order; in general, I do whatever interests me. However, I tend to limit myself to the first 300 problems as they are more suited to my difficluty range. 

My favorite Problems (in order):

- [Bitwise-OR operations on random integers](https://projecteuler.net/problem=323)
- [Su Doku](https://projecteuler.net/problem=96)
- [Drunken Tower of Hanoi](https://projecteuler.net/problem=497)

## Code
My code is written in Python, Mathematica, and C++. You can find a (deprecated) list of my templates on [my blog](https://dustin-miao.github.io/) or [my code library](https://dustin-miao.github.io/library/). I have a list of commonly used [templates](library/templates) and [sequences](library/sequences) specific to Project Euler in this repository, which I import as necessary in my solutions.  Finally, you can find codes on my [CodeForces](https://codeforces.com/profile/dutin) or [AtCoder](https://atcoder.jp/users/dutinmeow) profile. 

In my C++ codes I will sometimes import files from the [AtCoder Library](https://atcoder.github.io/ac-library/production/document_en/index.html). This is a library of templates for commonly used algorithm, the most useful of which is the [modular int](https://atcoder.github.io/ac-library/production/document_en/modint.html). 

I use a 2019 16-inch MacBook with a 2.6 GHz 6-Core Intel Core i7. Python codes are run using `python3`. C++ files are  compiled using `g++-12 m.cpp -std=c++20 -O2 -DLOCAL -I ${LIBRARY_PATH} -o m.out`, where `${LIBRARY_PATH}` is a local file path to a directory with the Atcoder Library and local utility files (including a debug template). On slower codes I will compile using `-O3` or `-Ofast` optimizations instead. I will generally try to abide by the "one-minute rule", in which a program to solve any given problem will take at most 60 seconds to run on a decent CPU. 

## Statistics


Problems Solved: 126

Problems Attempted: 131

<details><summary>List of Solved Problems</summary>

- [1: Multiples of 3 or 5](problems/0001-multiples-of-3-or-5)
- [2: Even fibonacci numbers](problems/0002-even-fibonacci-numbers)
- [3: Largest prime factor](problems/0003-largest-prime-factor)
- [4: Largest palindrome product](problems/0004-largest-palindrome-product)
- [5: Smallest multiple](problems/0005-smallest-multiple)
- [6: Sum square difference](problems/0006-sum-square-difference)
- [7: 10001st prime](problems/0007-10001st-prime)
- [8: Largest product in a series](problems/0008-largest-product-in-a-series)
- [9: Special pythagorean triple](problems/0009-special-pythagorean-triple)
- [10: Summation of primes](problems/0010-summation-of-primes)
- [11: Largest product in a grid](problems/0011-largest-product-in-a-grid)
- [12: Highly divisible triangular number](problems/0012-highly-divisible-triangular-number)
- [13: Large sum](problems/0013-large-sum)
- [14: Longest collatz sequence](problems/0014-longest-collatz-sequence)
- [15: Lattice paths](problems/0015-lattice-paths)
- [16: Power digit sum](problems/0016-power-digit-sum)
- [17: Number letter counts](problems/0017-number-letter-counts)
- [18: Maximum path sum I](problems/0018-maximum-path-sum-i)
- [19: Counting sundays](problems/0019-counting-sundays)
- [20: Factorial digit sum](problems/0020-factorial-digit-sum)
- [21: Amicable numbers](problems/0021-amicable-numbers)
- [22: Names score](problems/0022-names-score)
- [23: Non abundant sums](problems/0023-non-abundant-sums)
- [24: Lexicographic permutations](problems/0024-lexicographic-permutations)
- [25: 1000 digit fibonacci number](problems/0025-1000-digit-fibonacci-number)
- [26: Reciprocal cycles](problems/0026-reciprocal-cycles)
- [27: Quadratic primes](problems/0027-quadratic-primes)
- [28: Number spiral diagonals](problems/0028-number-spiral-diagonals)
- [29: Distinct powers](problems/0029-distinct-powers)
- [30: Digit fifth powers](problems/0030-digit-fifth-powers)
- [31: Coin sums](problems/0031-coin-sums)
- [32: Pandigital products](problems/0032-pandigital-products)
- [33: Digit cancelling fractions](problems/0033-digit-cancelling-fractions)
- [34: Digit factorials](problems/0034-digit-factorials)
- [35: Circular primes](problems/0035-circular-primes)
- [36: Double base polindrome](problems/0036-double-base-polindrome)
- [37: Truncatable primes](problems/0037-truncatable-primes)
- [38: Pandigital multiples](problems/0038-pandigital-multiples)
- [39: Integer right triangles](problems/0039-integer-right-triangles)
- [40: Champernownes constant](problems/0040-champernownes-constant)
- [41: Pandigital prime](problems/0041-pandigital-prime)
- [42: Coded triangle numbers](problems/0042-coded-triangle-numbers)
- [43: Sub string divisibility](problems/0043-sub-string-divisibility)
- [44: Pentagon numbers](problems/0044-pentagon-numbers)
- [45: Triangular pentagonal and hexagonal](problems/0045-triangular-pentagonal-and-hexagonal)
- [46: Goldbacks other conjecture](problems/0046-goldbacks-other-conjecture)
- [47: Distinct prime factors](problems/0047-distinct-prime-factors)
- [48: Self powers](problems/0048-self-powers)
- [49: Prime permutations](problems/0049-prime-permutations)
- [50: Consecutive prime sum](problems/0050-consecutive-prime-sum)
- [51: Prime digit replacements](problems/0051-prime-digit-replacements)
- [52: Permuted multiples](problems/0052-permuted-multiples)
- [53: Combinatoric selections](problems/0053-combinatoric-selections)
- [54: Poker hands](problems/0054-poker-hands)
- [55: Lychrel numbers](problems/0055-lychrel-numbers)
- [56: Powerful digit sum](problems/0056-powerful-digit-sum)
- [57: Square roots convergents](problems/0057-square-roots-convergents)
- [58: Spiral primes](problems/0058-spiral-primes)
- [59: Xor decryption](problems/0059-xor-decryption)
- [60: Prime pair sets](problems/0060-prime-pair-sets)
- [62: Cubic permutations](problems/0062-cubic-permutations)
- [63: Powerful digits count](problems/0063-powerful-digits-count)
- [64: Odd period square roots](problems/0064-odd-period-square-roots)
- [65: Convergents of e](problems/0065-convergents-of-e)
- [67: Maximum path sum II](problems/0067-maximum-path-sum-ii)
- [68: Magic 5 gon ring](problems/0068-magic-5-gon-ring)
- [69: Totient maximum](problems/0069-totient-maximum)
- [70: Totient permutation](problems/0070-totient-permutation)
- [71: Ordered fractions](problems/0071-ordered-fractions)
- [72: Counting fractions](problems/0072-counting-fractions)
- [73: Counting fractions in a range](problems/0073-counting-fractions-in-a-range)
- [74: Digit factorial chains](problems/0074-digit-factorial-chains)
- [75: Singular integer right triangles](problems/0075-singular-integer-right-triangles)
- [76: Counting summations](problems/0076-counting-summations)
- [77: Prime summations](problems/0077-prime-summations)
- [78: Coin partitions](problems/0078-coin-partitions)
- [79: Password derivation](problems/0079-password-derivation)
- [80: Square root digital expansion](problems/0080-square-root-digital-expansion)
- [81: Path sum two ways](problems/0081-path-sum-two-ways)
- [82: Path sum three ways](problems/0082-path-sum-three-ways)
- [83: Path sum four ways](problems/0083-path-sum-four-ways)
- [85: Counting rectangles](problems/0085-counting-rectangles)
- [87: Prime power triples](problems/0087-prime-power-triples)
- [91: Right triangles with integer coordinates](problems/0091-right-triangles-with-integer-coordinates)
- [92: Square digit chains](problems/0092-square-digit-chains)
- [96: Su doku](problems/0096-su-doku)
- [97: Large non mersenne prime](problems/0097-large-non-mersenne-prime)
- [99: Largest exponential](problems/0099-largest-exponential)
- [102: Triangle containment](problems/0102-triangle-containment)
- [104: Pandigital fibonacci ends](problems/0104-pandigital-fibonacci-ends)
- [107: Minimal network](problems/0107-minimal-network)
- [114: Counting block combinations I](problems/0114-counting-block-combinations-i)
- [115: Counting block combinations II](problems/0115-counting-block-combinations-ii)
- [116: Red green or blue tiles](problems/0116-red-green-or-blue-tiles)
- [117: Red green and blue tiles](problems/0117-red-green-and-blue-tiles)
- [121: Disc game prize fund](problems/0121-disc-game-prize-fund)
- [131: Prime cube partnership](problems/0131-prime-cube-partnership)
- [149: Searching for a maximum sum subsequence](problems/0149-searching-for-a-maximum-sum-subsequence)
- [150: Searching a triangular array for a sub triangle having minimum sum](problems/0150-searching-a-triangular-array-for-a-sub-triangle-having-minimum-sum)
- [158: Exploring strings for which only one character comes lexicographically after its neighbor to the left](problems/0158-exploring-strings-for-which-only-one-character-comes-lexicographically-after-its-neighbor-to-the-left)
- [164: Numbers for which no three consecutive digits have a sum greater than a given value](problems/0164-numbers-for-which-no-three-consecutive-digits-have-a-sum-greater-than-a-given-value)
- [179: Consecutive positive divisors](problems/0179-consecutive-positive-divisors)
- [187: Semiprimes](problems/0187-semiprimes)
- [188: The hyperexponentiation of a number](problems/0188-the-hyperexponentiation-of-a-number)
- [191: Prize strings](problems/0191-prize-strings)
- [204: Generalised hamming numbers](problems/0204-generalised-hamming-numbers)
- [205: Dice game](problems/0205-dice-game)
- [206: Concealed square](problems/0206-concealed-square)
- [218: Perfect right angled triangles](problems/0218-perfect-right-angled-triangles)
- [243: Resilience](problems/0243-resilience)
- [258: A lagged fibonacci sequence](problems/0258-a-lagged-fibonacci-sequence)
- [294: Sum of digits experience 23](problems/0294-sum-of-digits-experience-23)
- [301: Nim](problems/0301-nim)
- [317: Firecracker](problems/0317-firecracker)
- [323: Bitwise or operations on random integers](problems/0323-bitwise-or-operations-on-random-integers)
- [337: Totient squarestep sequence](problems/0337-totient-squarestep-sequence)
- [345: Matrix sum](problems/0345-matrix-sum)
- [378: Triangle triples](problems/0378-triangle-triples)
- [411: Uphill paths](problems/0411-uphill-paths)
- [493: Under the rainbow](problems/0493-under-the-rainbow)
- [497: Drunken tower of hanoi](problems/0497-drunken-tower-of-hanoi)
- [500: Problem 500](problems/0500-problem-500)
- [504: Square on the inside](problems/0504-square-on-the-inside)
- [686: Powers of two](problems/0686-powers-of-two)
- [808: Reversible prime squares](problems/0808-reversible-prime-squares)
- [828: Numbers challenge](problems/0828-numbers-challenge)
</details>

<details><summary>Table of Solved Problems</summary>

|<!---->|<!---->|<!---->|<!---->|<!---->|<!---->|<!---->|<!---->|<!---->|<!---->|
|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|:-----:|
|[1](problems/0001-multiples-of-3-or-5)|[2](problems/0002-even-fibonacci-numbers)|[3](problems/0003-largest-prime-factor)|[4](problems/0004-largest-palindrome-product)|[5](problems/0005-smallest-multiple)|[6](problems/0006-sum-square-difference)|[7](problems/0007-10001st-prime)|[8](problems/0008-largest-product-in-a-series)|[9](problems/0009-special-pythagorean-triple)|[10](problems/0010-summation-of-primes)|
|[11](problems/0011-largest-product-in-a-grid)|[12](problems/0012-highly-divisible-triangular-number)|[13](problems/0013-large-sum)|[14](problems/0014-longest-collatz-sequence)|[15](problems/0015-lattice-paths)|[16](problems/0016-power-digit-sum)|[17](problems/0017-number-letter-counts)|[18](problems/0018-maximum-path-sum-i)|[19](problems/0019-counting-sundays)|[20](problems/0020-factorial-digit-sum)|
|[21](problems/0021-amicable-numbers)|[22](problems/0022-names-score)|[23](problems/0023-non-abundant-sums)|[24](problems/0024-lexicographic-permutations)|[25](problems/0025-1000-digit-fibonacci-number)|[26](problems/0026-reciprocal-cycles)|[27](problems/0027-quadratic-primes)|[28](problems/0028-number-spiral-diagonals)|[29](problems/0029-distinct-powers)|[30](problems/0030-digit-fifth-powers)|
|[31](problems/0031-coin-sums)|[32](problems/0032-pandigital-products)|[33](problems/0033-digit-cancelling-fractions)|[34](problems/0034-digit-factorials)|[35](problems/0035-circular-primes)|[36](problems/0036-double-base-polindrome)|[37](problems/0037-truncatable-primes)|[38](problems/0038-pandigital-multiples)|[39](problems/0039-integer-right-triangles)|[40](problems/0040-champernownes-constant)|
|[41](problems/0041-pandigital-prime)|[42](problems/0042-coded-triangle-numbers)|[43](problems/0043-sub-string-divisibility)|[44](problems/0044-pentagon-numbers)|[45](problems/0045-triangular-pentagonal-and-hexagonal)|[46](problems/0046-goldbacks-other-conjecture)|[47](problems/0047-distinct-prime-factors)|[48](problems/0048-self-powers)|[49](problems/0049-prime-permutations)|[50](problems/0050-consecutive-prime-sum)|
|[51](problems/0051-prime-digit-replacements)|[52](problems/0052-permuted-multiples)|[53](problems/0053-combinatoric-selections)|[54](problems/0054-poker-hands)|[55](problems/0055-lychrel-numbers)|[56](problems/0056-powerful-digit-sum)|[57](problems/0057-square-roots-convergents)|[58](problems/0058-spiral-primes)|[59](problems/0059-xor-decryption)|[60](problems/0060-prime-pair-sets)|
||[62](problems/0062-cubic-permutations)|[63](problems/0063-powerful-digits-count)|[64](problems/0064-odd-period-square-roots)|[65](problems/0065-convergents-of-e)||[67](problems/0067-maximum-path-sum-ii)|[68](problems/0068-magic-5-gon-ring)|[69](problems/0069-totient-maximum)|[70](problems/0070-totient-permutation)|
|[71](problems/0071-ordered-fractions)|[72](problems/0072-counting-fractions)|[73](problems/0073-counting-fractions-in-a-range)|[74](problems/0074-digit-factorial-chains)|[75](problems/0075-singular-integer-right-triangles)|[76](problems/0076-counting-summations)|[77](problems/0077-prime-summations)|[78](problems/0078-coin-partitions)|[79](problems/0079-password-derivation)|[80](problems/0080-square-root-digital-expansion)|
|[81](problems/0081-path-sum-two-ways)|[82](problems/0082-path-sum-three-ways)|[83](problems/0083-path-sum-four-ways)||[85](problems/0085-counting-rectangles)||[87](problems/0087-prime-power-triples)||||
|[91](problems/0091-right-triangles-with-integer-coordinates)|[92](problems/0092-square-digit-chains)||||[96](problems/0096-su-doku)|[97](problems/0097-large-non-mersenne-prime)||[99](problems/0099-largest-exponential)||
||[102](problems/0102-triangle-containment)||[104](problems/0104-pandigital-fibonacci-ends)|||[107](problems/0107-minimal-network)||||
||||[114](problems/0114-counting-block-combinations-i)|[115](problems/0115-counting-block-combinations-ii)|[116](problems/0116-red-green-or-blue-tiles)|[117](problems/0117-red-green-and-blue-tiles)||||
|[121](problems/0121-disc-game-prize-fund)||||||||||
|[131](problems/0131-prime-cube-partnership)||||||||||
|||||||||[149](problems/0149-searching-for-a-maximum-sum-subsequence)|[150](problems/0150-searching-a-triangular-array-for-a-sub-triangle-having-minimum-sum)|
||||||||[158](problems/0158-exploring-strings-for-which-only-one-character-comes-lexicographically-after-its-neighbor-to-the-left)|||
||||[164](problems/0164-numbers-for-which-no-three-consecutive-digits-have-a-sum-greater-than-a-given-value)|||||||
|||||||||[179](problems/0179-consecutive-positive-divisors)||
|||||||[187](problems/0187-semiprimes)|[188](problems/0188-the-hyperexponentiation-of-a-number)|||
|[191](problems/0191-prize-strings)||||||||||
||||[204](problems/0204-generalised-hamming-numbers)|[205](problems/0205-dice-game)|[206](problems/0206-concealed-square)|||||
||||||||[218](problems/0218-perfect-right-angled-triangles)|||
||||||||||<br>|
||||||||||<br>|
|||[243](problems/0243-resilience)||||||||
||||||||[258](problems/0258-a-lagged-fibonacci-sequence)|||
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||[294](problems/0294-sum-of-digits-experience-23)|||||||
|[301](problems/0301-nim)||||||||||
|||||||[317](problems/0317-firecracker)||||
|||[323](problems/0323-bitwise-or-operations-on-random-integers)||||||||
|||||||[337](problems/0337-totient-squarestep-sequence)||||
|||||[345](problems/0345-matrix-sum)||||||
||||||||||<br>|
||||||||||<br>|
||||||||[378](problems/0378-triangle-triples)|||
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
|[411](problems/0411-uphill-paths)||||||||||
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
||||||||||<br>|
|||[493](problems/0493-under-the-rainbow)||||[497](problems/0497-drunken-tower-of-hanoi)|||[500](problems/0500-problem-500)|
||||[504](problems/0504-square-on-the-inside)|||||||
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
||||||[686](problems/0686-powers-of-two)|||||
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
||||||||[808](problems/0808-reversible-prime-squares)|||
||||||||||<br>|
||||||||[828](problems/0828-numbers-challenge)|||
||||||||||<br>|
</details>


Generated automatically using [stats-generator.py](util/stats-generator.py). 

