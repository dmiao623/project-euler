using Primes

function solve(n)
	s = floor(Int64, 0.5 * (sqrt(2 * n - 1)) - 1)
	r = 0
	for i::Int64 ∈ 1:s
		r += isprime(2 * ((i + 1) * i) + 1) ? 1 : 0
	end
	r
end

open("answer.txt", "w") do af
	write(af, string(solve(5 * 10 ^ 15)))
end