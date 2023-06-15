function solve()
	σ, τ = 10^18, Vector{Int}()
	▶ = 50

	function recurse(n, a)
		sum(a) >= σ && return false
		p, q, ι = a[1], 0, 2
		while ι <= n
			p += a[ι]
			q += a[n-ι+2]
			p<q && return false
			ι += 1
		end

		if n == 7
			b = [sum([a[j] for j ∈ 1:n if i>>(j-1)&1==1]) for i ∈ 0:(2^n-1)]
			if length(unique(b)) == 2^n 
				σ, τ = sum(a), a
			end
			return true
		else
			for x ∈ last(a)+1:min(▶, σ-sum(a)-1,2*last(a))
				if recurse(n+1, push!(copy(a), x)) end
			end
			return false
		end
	end

	for x ∈ 20:24 recurse(1, [x]) end
	join([string(x) for x ∈ τ])
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end