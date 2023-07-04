function solve()
	function compute(k::Int)
		function num(xy, z) 
			if xy > 2 * z return 0 end
			if z >= xy return xy÷2 end
			return z-(xy-1)÷2
		end

		kₛ, ans = floor(Int, sqrt(2*k)), 0
		for m ∈ 1:kₛ, n ∈ 1:m-1
			(gcd(n, m) != 1 || n % 2 == m % 2) && continue 
			a = m * m - n * n
			b = 2 * m * n
			c = m * m + n * n

			for i ∈ 1:k÷a ans += num(i*b, i*a) end
			for i ∈ 1:k÷b ans += num(i*a, i*b) end
		end
		ans
	end

	n = 10^6
	bl, br = 1, 10^6
	while bl < br
		bm = (bl+br)÷2
		if compute(bm)<n
			bl = bm+1
		else
			br = bm
		end
	end
	bl
end

@time open("answer.txt", "w") do af write(af, string(solve())) end