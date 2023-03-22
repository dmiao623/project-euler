using Combinatorics

function generate(f, ll, rr)
	r = []
	for i in 1:rr
		k = f(i)
		if k > rr break end
		if k < ll continue end
		push!(rr, k)
	end
	return rr
end

function connected(a, b) = a % 10 == b ÷ 100 % 10 && a ÷ 10 % 10 == b ÷ 1000

function solve(ll, rr)
	k = 6
	p₀ = [
		generate(k -> k * (k + 1) ÷ 2, ll, rr),
		generate(k -> k * k, ll, rr),
		generate(k -> k * (3 * k - 1) ÷ 2, ll, rr),
		generate(k -> k * (2 * k - 1), ll, rr),
		generate(k -> k * (5 * k - 3) ÷ 2, ll, rr),
		generate(k -> k * (3 * k - 2), ll, rr)
	]

	function recurse(a)
		l = last(a)
		if length(a) == 6
			
		end
	end

	for p ∈ permutations(p₀)
		Set([])
		for l ∈ 2:k
			for i ∈ length(p[l])
				for j 
			end
		end
	end

	println(@. length(p))
	println(prod(@. length(p)))
end

solve(10 ^ 3, 10 ^ 4 - 1)