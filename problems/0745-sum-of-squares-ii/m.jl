using Mods

function solve(n::Int=10^14, ζ::Int=10^9+7)
	nₛ = isqrt(n)
	a::Vector{Mod{ζ}} = zeros(Mod{ζ}, nₛ)
	for i ∈ nₛ:-1:1
		a[i] = n ÷ i^2
		for j ∈ 2*i:i:nₛ a[i] -= a[j] end
	end
	value(sum(a[i]*i^2 for i ∈ 1:nₛ))
end

@time ans = string(solve())
open("answer.txt", "w") do af write(af, ans) end
println(ans)