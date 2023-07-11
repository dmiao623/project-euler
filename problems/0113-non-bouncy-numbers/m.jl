function solve(n=100)
	f, g = zeros(Int, (n, 10)), zeros(Int, (n, 10))
	for i ∈ 1:10 f[1,i] = g[1,i] = 1 end
	for i ∈ 2:n, j ∈ 1:10 
		f[i,j] = sum(f[i-1,k] for k ∈ 1:j) 
		g[i,j] = sum(g[i-1,k] for k ∈ j:10)
	end
	sum(f[i,j]+g[i,j]-1 for i ∈ 1:n, j ∈ 2:10)
end

@time ans = string(solve())
open("answer.txt", "w") do af write(af, ans) end
println(ans)