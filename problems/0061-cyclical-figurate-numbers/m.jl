function connected(a, b) a % 10 == b ÷ 100 % 10 && a ÷ 10 % 10 == b ÷ 1000 end

function solve()
	function generate(f)
		r = []
		for i in 1:10000
			k = f(i)
			k > 9999 && break
			k < 1000 && continue
			push!(r, k)
		end
		return r
	end
	
	p₀ = [
		generate(k -> k * (k + 1) ÷ 2),
		generate(k -> k * k),
		generate(k -> k * (3 * k - 1) ÷ 2),
		generate(k -> k * (2 * k - 1)),
		generate(k -> k * (5 * k - 3) ÷ 2),
		generate(k -> k * (3 * k - 2))
	]

	answer = Vector{Int}()

	function recurse(first, last, mask)
		if mask == 63 return connected(last, first) end
		for m ∈ 1:6
			if mask >> (m - 1) & 1 == 0
				for p ∈ p₀[m]
					if connected(last, p)
						ret = recurse(first, p, mask | (1 << (m - 1)))
						ret && (push!(answer, p), return true)
					end
				end
			end
		end
		false
	end
	for p ∈ p₀[1] 
		ret = recurse(p, p, 1)
		ret && (push!(answer, p), break)
	end
	sum(answer)
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end