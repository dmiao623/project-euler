function solve()
	aa = "1415926535897932384626433832795028841971693993751058209749445923078164062862089986280348253421170679"
	bb = "8214808651328230664709384460955058223172535940812848111745028410270193852110555964462294895493038196"

	l = [100, 100]
	kk = (127 + 19 * 17) * 7 ^ 17
	while last(l) < kk
		push!(l, l[size(l)[1] - 1] + l[size(l)[1]])
	end

	# get kth digit of term n
	function recurse(k, n)
		if n == 1 return aa[k] end
		if n == 2 return bb[k] end
		return k <= l[n - 2] ? recurse(k, n - 2) : recurse(k - l[n - 2], n - 1)
	end

	function digit(n)
		i = 1
		while l[i] < n i += 1 end
		return parse(Int, recurse(n, i))
	end

	return sum(10 ^ n * digit((127 + 19 * n) * 7 ^ n) for n in 0:17)
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end