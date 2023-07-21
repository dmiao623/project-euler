b₄(x::Vector{Int}) = sum(x[i]*4^(i-1) for i ∈ 1:length(x))

function solve(n::Int=30)
	local f::Array{Int, 3} = zeros(Int, (n, 4^3, 2^4))
	f[3,1:4^3,1] .= 1

	δ = [b₄([1,1,3,2]),b₄([1,3,0,2]),b₄([0,1,3,0]),b₄([2,1,1,3])]
	for i ∈ 3:n-1
		for j ∈ 0:4^3-1, k ∈ 0:2^4-1, c ∈ 0:3
			x = j*4+c
			ds = findfirst(isequal(x), δ)
			if isnothing(ds)
				f[i+1,x%4^3+1,k+1] += f[i,j+1,k+1]
				continue
			end
			ds -= 1
			((k>>ds)&1)==0 && (f[i+1,x%4^3+1,(k|(1<<ds))+1] += f[i,j+1,k+1])
		end
	end
	sum(f[n,i,2^4] for i ∈ 1:4^3)
end

@time ans = string(solve())
open("answer.txt", "w") do af write(af, ans) end
println(ans)