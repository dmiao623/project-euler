using Primes

function crt(n::Array, a::Array)
    Π = prod(n)
    mod(sum(ai * invmod(Π ÷ ni, ni) * (Π ÷ ni) for (ni, ai) in zip(n, a)), Π)
end

function solve()
	p, t, s = 5, 1, 0
	while p <= 1000000
		if p > t t *= 10 end
		q = nextprime(p + 1)
		s += crt([t, q], [p, 0])
		p = q
	end
	return s
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end