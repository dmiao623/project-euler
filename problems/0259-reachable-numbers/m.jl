function solve()
	function recurse(l, r)
		if l == r return [l//1] end
		ρ = Vector{Rational{Int64}}([sum(i * 10 ^ (r - i) for i ∈ l:r)])
		for m ∈ l:r-1
			aₗ, aᵣ = recurse(l, m), recurse(m+1, r)
			for x ∈ aₗ
				for y ∈ aᵣ
					push!(ρ, x+y)
					push!(ρ, x-y)
					push!(ρ, x*y)
					if y != 0 push!(ρ, x/y) end
				end
			end
		end
		sort!(ρ)
		unique!(ρ)
		ρ
	end

	ɖ = recurse(1, 9)
	sum(Int(x) for x ∈ ɖ if denominator(x) == 1 && numerator(x) > 0)
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end