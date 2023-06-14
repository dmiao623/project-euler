using Primes

function solve()
	p, c, s = 2, 0, 0
	while c < 40
		if powermod(10, 10^9, 9*p) == 1
			c += 1
			s += p
		end
		p = nextprime(p + 1)
	end
	s
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end