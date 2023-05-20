using Primes

function solve()
	p, r = 5, 0
	while p < 10 ^ 8 
		a = invmod(p - 1, p)
		b = invmod(p - 2, p)
		c = invmod(p - 3, p)
		d = invmod(p - 4, p)
		r += ((p - 1) + (p - 1) * a % p + (p - 1) * a % p * b % p + (p - 1) * a % p * b % p * c % p + (p - 1) * a % p * b % p * c % p * d % p) % p
		p = nextprime(p + 1)
	end
	r
end

open("answer.txt", "w") do af
    write(af, string(solve()))
end