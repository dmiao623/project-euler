using Primes

function solve(n)
	r = 0
	for i ∈ range(10, n, step = 10)
		k = i ^ 2
		if isprime(k + 1) && 
		   nextprime(k + 2) == k + 3 && 
		   nextprime(k + 4) == k + 7 && 
		   nextprime(k + 8) == k + 9 && 
		   nextprime(k + 10) == k + 13 && 
		   nextprime(k + 14) == k + 27
			r += i
		end
	end
	r
end

open("answer.txt", "w") do af
	write(af, string(solve(150 * 10 ^ 6)))
end