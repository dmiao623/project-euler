using Mods

function solve(n=10^16, ζ=10^9+7) 
	function transition(m)
		return Mod{ζ}.([
			                2           0 0                 0               0 0                 0           0 0;
			  Mod{ζ}(2)^(m-1)           2 0                 0               0 0                 0           0 0;
			Mod{ζ}(2)^(2*m-2) Mod{ζ}(2)^m 2                 0               0 0                 0           0 0;
			                1           0 0                 2               0 0                 0           0 0;
			  Mod{ζ}(2)^(m-1)           1 0   Mod{ζ}(2)^(m-1)               2 0                 0           0 0;
			Mod{ζ}(2)^(2*m-2) Mod{ζ}(2)^m 1 Mod{ζ}(2)^(2*m-2)     Mod{ζ}(2)^m 2                 0           0 0;
			                1           0 0                 2               0 0                 2           0 0;
			  Mod{ζ}(2)^(m-1)           1 0       Mod{ζ}(2)^m               2 0   Mod{ζ}(2)^(m-1)           2 0;
			Mod{ζ}(2)^(2*m-2) Mod{ζ}(2)^m 1 Mod{ζ}(2)^(2*m-1) Mod{ζ}(2)^(m+1) 2 Mod{ζ}(2)^(2*m-2) Mod{ζ}(2)^m 2;
		])
	end

	n += 1
	m = floor(Int, log2(n))
	a = Vector{Vector{Mod{ζ, Int}}}()
	push!(a, Mod{ζ}.([1,0,0,0,0,0,0,0,0]))
	for i ∈ 1:m
		push!(a, transition(i)*last(a))
	end

	r, c, s = Mod{ζ}(0), Mod{ζ}(0), Mod{ζ}(0)
	for i ∈ m:-1:0
		((n >> i) & 1) == 0 && continue
		r += sum([s^2*c^2, 2*s*c^2, c^2, 2*s^2*c, 4*s*c, 2*c, s*s, 2*s, 1].*a[i+1])
		c += 1
		s += Mod{ζ}(2)^i
	end
	value(r)
end

@time ans = string(solve())
open("answer.txt", "w") do af write(af, ans) end
println(ans)