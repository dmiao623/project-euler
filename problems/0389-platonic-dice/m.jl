using Formatting

function solve()
	e, σ = 1, 0
	for s ∈ [4, 6, 8, 12, 20]
		eₒ, σₒ = e, σ
		eₛ, σₛ = (s+1)/2, (s^2-1)/12
		e, σ = eₒ*eₛ, eₒ*σₛ+eₛ^2*σₒ
	end
	format(round(σ, digits=4))
end

@time ans = string(solve())
open("answer.txt", "w") do af write(af, ans) end
println(ans)