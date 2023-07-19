function solve(n=10^14)
	nₛ = floor(Int, n^0.25)
	s = Set{Int}()

	ans = 0
	for x ∈ 1:nₛ
		y = 1
		while true
			k = x*(x+1)*y*(y+1)
			k > n && break
			push!(s, k)
			y += 1
		end
	end
	length(s)
end

@time ans = solve()
open("answer.txt", "w") do af write(af, string(ans)) end
println(ans)