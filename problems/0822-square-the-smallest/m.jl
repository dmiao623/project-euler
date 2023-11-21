using Mods

function solve(n=10^4, m=10^16, ζ=1234567891)
	a = log.(log.(2:n)) ./ log(2)
	b = maximum(floor.(Int, a)) .- floor.(Int, a)
	c = [x < 0 ? x+1.0 : x for x ∈ a .% 1.0]
	k = (m - sum(b)) ÷ (n-1)
	
	for i ∈ 1:m-sum(b)-k*(n-1)
		j = findfirst(==(minimum(c)), c)
		c[j] += 1.0
		b[j] += 1
	end

	value(sum(Mod{ζ}(i)^(powermod(2, b[i-1]+k, ζ-1)) for i ∈ 2:n))
end

@time ans = string(solve())
open("answer.txt", "w") do af write(af, ans) end
println(ans)