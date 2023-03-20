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

function solve(n)
	k = 0
	for i ∈ 3:n
		z = i ^ 2
		a, b = 1, 1
		t = totient(z)
		r = 0
		for j ∈ 1:t
			r = max(r, (a + b) % z)
			a = a * (i - 1) % z
			b = b * (i + 1) % z
		end
		k += r
	end
	k
end


open("answer.txt", "w") do af
	write(af, string(solve(10 ^ 3)))
end