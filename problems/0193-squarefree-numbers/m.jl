function solve(n=2^50)
	n₂, ans = isqrt(n), 0
	println(n₂)
	open("../../library/sequences/mobius.txt", "r") do df
		for i ∈ 1:n₂
			μ = parse(Int, readline(df))
			ans += μ*(n÷i^2)
		end
	end
	ans
end

@time ans = string(solve())
open("answer.txt", "w") do af write(af, ans) end
println(ans)