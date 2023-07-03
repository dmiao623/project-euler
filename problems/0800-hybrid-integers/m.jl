using Primes

function solve()
	n = 800800
	m = n * log(n)
	m₀ = 2 * floor(Int, m)
	pfix = zeros(Int, m₀)
	for i ∈ 2:m₀
		pfix[i] = pfix[i - 1] + (isprime(i) ? 1 : 0)
	end

	p, ans = 2, 0
	while p <= n
		ql, qr = nextprime(p), m₀
		while ql < qr
			qm = (ql+qr+1) ÷ 2
			if p * log(qm) + qm * log(p) <= m
				ql = qm
			else
				qr = qm - 1
			end
		end
		ans += pfix[ql] - pfix[p]
		p = nextprime(p+1)
	end

	ans
end

open("answer.txt", "w") do af write(af, string(solve)) end