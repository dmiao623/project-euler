function solve(s, n)
	(n-2)÷foldl(lcm, 1:s) - (n-2)÷foldl(lcm, 1:s+1)
end

@time ans = string(sum(solve(i, 4^i) for i ∈ 1:31))
open("answer.txt", "w") do af write(af, ans) end
println(ans)
