using Primes

function solve(n)
	r = 0
	for i in 1:1000
		p = (i + 1) ^ 3 - i ^ 3
		if p >= n break end
		if isprime(p) r += 1 end
	end
	r
end

open("answer.txt", "w") do af
	write(af, string(solve(10^6)))
end
