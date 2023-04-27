using Primes

function solve(n)
	shn = []

	function generate(l, k, s)
		if l >= n return end
		for d ∈ 0:9
			kk = k * 10 + d
			ss = s + d
			if kk % ss == 0
				generate(l + 1, kk, ss)
				if isprime(kk ÷ ss) 
					push!(shn, kk)
				end
			end
		end
	end

	for d ∈ 1:9
		generate(1, d, d)
	end

	ans = 0
	for p ∈ shn
		for d ∈ 0:9
			k = p * 10 + d
			if isprime(k) 
				ans += k
			end
		end
	end
	return ans
end

open("answer.txt", "w") do af
	write(af, string(solve(13)))
end