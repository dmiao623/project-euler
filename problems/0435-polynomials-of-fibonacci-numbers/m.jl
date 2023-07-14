using Mods

function solve(n=10^15, kₗ=0, kᵣ=100, ζ=factorial(15))
	value(sum(((Mod{ζ}.([x x^2 0;1 0 0;x x^2 1]))^(n-1)*(Mod{ζ}.([x;0;x])))[3,1] for x ∈ kₗ:kᵣ))
end

@time ans = string(solve())
open("answer.txt", "w") do af write(af, ans) end
println(ans)