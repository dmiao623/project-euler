function solve()
	a::Int128 = 1504170715041707
	b::Int128 = 4503599627370517
	c::Int128 = invmod(a, b)

	mn::Int128 = b
	ans::Int128 = 0
	for i ∈ 1:10^8
		x = a * i % b
		x < mn && (mn = x; ans += x)
	end

	bn = mn
	mn = b
	for i ∈ 1:bn-1
		p = c * i % b
		p < mn && (mn = p; ans += i)
	end

	ans
end

open("answer.txt", "w") do af write(af, string(solve())) end 