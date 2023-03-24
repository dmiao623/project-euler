using Memoization

function solve(kk) 
	f = fill(-1, kk)

	@memoize function recurse(n, p, s, m = 1, d = 0)
		# println("$n $p $s $m $d")
		if d > kk return 0 end
		if d != 0 && p == s
			# println("$n $p $s $m $d")
			if f[d] == -1
				f[d] = n
				return 1
			end
			return 0
		end

		r = 0
		k = Int(trunc(sqrt(p)))
		for i ∈ m:p
			if p % i == 0
				# println("factor $i")
				r += recurse(n, p ÷ i, s - i, i, d + 1)
			end
		end
		r
	end

	i = 2
	t = kk - 1
	rs = 0
	while t != 0 && i < 20
		tt = recurse(i, i, i)
		if tt > 0 
			t -= tt
			rs += i
			println("$rs $i")
		end
		# println("\ntt = $t")
		i += 1
	end
	rs
end

println(solve(12000))