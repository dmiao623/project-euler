using Mods
using LinearAlgebra

function solve(n=big(10)^100000, ℧=10^8+7)
	ψ = zeros(Int, 2^9)

	function generate(a, x, y)
		if y == 4
			if x == 3
				k = 0
				for i ∈ 1:3, j ∈ 1:3 
					!a[i,j] && (k += 2^((i-1)*3+(j-1)))
				end
				ψ[k+1] += 1
			else
				generate(a, x+1, 1)
			end
			return
		end

		if a[x,y]
			generate(a, x, y+1)
		else
			if x != 3 && !a[x+1,y]
				a[x,y] = a[x+1,y] = true
				generate(a, x, y+1)
				a[x,y] = a[x+1,y] = false
			end
			if y != 3 && !a[x,y+1]
				a[x,y] = a[x,y+1] = true
				generate(a, x, y+1)
				a[x,y] = a[x,y+1] = false
			end
			generate(a, x, y+1)
		end
	end

	generate(falses(3, 3), 1, 1)
	
	τ = zeros(Mod{℧}, (2^9, 2^9))
	for p ∈ 1:2^9, q ∈ 1:2^9
		(p-1)&(q-1) != 0 && continue
		τ[q,p] = ψ[((p-1)|(q-1))+1]
	end

	vis = falses(2^9)
	function dfs(u)
		vis[u] && return
		vis[u] = true
		for i ∈ 1:2^9
			τ[u, i] != 0 && dfs(i)
		end
	end

	dfs(1)
	dr = []
	for i ∈ 1:2^9
		!vis[i] && push!(dr, i)
	end

	τₛ = copy(τ)
	τ = τₛ[1:end .∉ [dr], 1:end .∉ [dr]]
	# display(size(τ))
	np = size(τ)[1]

	ι = zeros(Mod{℧}, np)
	ι[1] = 1
	n == 0 && return 1
	value((τ^n * ι)[1])
end

for i ∈ 0:22
	println(solve(2*i))
end

# @time ans = string(solve())
# open("answer.txt", "w") do af write(af, ans) end
# println(ans)