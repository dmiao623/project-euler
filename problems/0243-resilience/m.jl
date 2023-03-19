using Primes

function totient(n)
	f = factor(n)
	x = n
	for (k, v) in f
		x *= k - 1
		x ÷= k
	end
	x
end

function solve(nn, dd)
	c = 0
	p = 1
	while totient(p) * dd >= (p - 1) * nn
		c = nextprime(c + 1)
		p *= c
	end

	p ÷= c
	k = 1
	while totient(p * k) * dd >= (p * k - 1) * nn
		 k += 1
	end
	p * k
end

open("answer.txt", "w") do af
	write(af, string(solve(15499, 94744)))
end