using Primes

function solve()
	n = 40000000
	f = zeros(n)
	s = 0
	f[1] = 1
	for i ∈ 2:n
		f[i] = f[totient(i)] + 1
		if f[i] == 25 && isprime(i)
			s += i
		end
	end
	s
end

open("answer.txt", "w") do af
    write(af, string(solve()))
end