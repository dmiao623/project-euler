using Primes

function solve(n)
	z = Int128(1234567891011)
	t = Matrix{Int128}[]
	push!(t, [1 1; 1 0])
	for i in 1:64
		k = (last(t) ^ 2) .% z
		push!(t, k)
	end

	function fibonacci(k)
		r = Matrix{Int128}(mapreduce(permutedims, vcat, [[1],[0]]))
		for i in 1:64 if (k >> (i - 1) & 1) != 0
			r = (t[i] * r) .% z
		end end
		r[2][1]
	end

	s::Int128 = 0
	k = nextprime(10 ^ 14)
	for i ∈ 1:n
		s = (s + fibonacci(k)) % z
		k = nextprime(k + 1)
	end
	return s
end

open("answer.txt", "w") do af
	write(af, string(solve(10 ^ 5)))
end