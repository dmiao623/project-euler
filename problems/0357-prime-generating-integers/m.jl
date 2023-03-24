function solve(n)
	pr = []
	ip = fill(false, n + 1)
	open("../../library/sequences/primes.txt", "r") do df
		while true
			k = parse(Int32, readline(df))
			if k > n + 1 break end
			push!(pr, k)
			ip[k] = true
		end
	end

	ans = 1

	function recurse(a, s)
		nn = length(a)
		k = 1 << nn
		p = prod(a)
		b = true
		for m ∈ 0:k-1
			if m > k ⊻ m break end
			t = 1

			for i ∈ 0:nn-1
				if (m >>> i) & 1 == 1 
					t *= a[i + 1] 
				end 
 			end
			if !ip[p ÷ t + t] 
				b = false
				break
			end
		end

		if b ans += p end
		for i ∈ s:length(pr)
			if p * pr[i] >= n break end
			recurse(push!(copy(a), pr[i]), i + 1)
		end
	end

	recurse([2], 2)
	ans
end

open("answer.txt", "w") do af
	write(af, string(solve(10 ^ 8)))
end