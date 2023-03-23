function palindrome(x)
	y, r = x, 0
	while y != 0
		y, d = divrem(y, 10)
		r = r * 10 + d
	end
	r == x
end

function solve(n)
	s = Int(trunc(sqrt(n)))
	p = cumsum([i ^ 2 for i ∈ 0:s])

	q = Set()
	r, k = 0, 0
	for i ∈ 1:length(p)
		for j ∈ i+2:length(p)
			if p[j] - p[i] >= n break end
			if palindrome(p[j] - p[i]) push!(q, p[j] - p[i]); end
		end
	end
	sum(q)
end

open("answer.txt", "w") do af
	write(af, string(solve(10 ^ 8)))
end