using Primes

function solve(n) sum([k == radical(k) ? k : 0 for k in Set([binomial(i, j) for i in 0:n for j in 0:i])]) end

open("answer.txt", "w") do af
	write(af, string(solve(50)))
end