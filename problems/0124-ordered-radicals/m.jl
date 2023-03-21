using Primes

function solve(n, k) partialsort([(radical(i), i) for i ∈ 1:n], k)[2] end

open("answer.txt", "w") do df
	write(df, string(solve(10 ^ 5, 10 ^ 4)))
end