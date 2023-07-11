using Primes
using DataStructures

function solve(n=4*10^6, k=40)
	pr, pₜ = Vector{BigInt}(), 2
	while pₜ < k 
		push!(pr, pₜ)
		pₜ = nextprime(pₜ+1)
	end

	m = length(pr)
	pq = PriorityQueue{Vector{Int}, BigInt}()
	vis = Set()
	ans = 10^18

	cost(c::Vector{Int}) = prod(2*x+1 for x in c)
	val(c::Vector{Int}) = prod(pr[i]^c[i] for i ∈ 1:m)

	enqueue!(pq, zeros(Int, m) => 1)
	push!(vis, 1)
	while length(pq) != 0
		c = dequeue!(pq)
		v = val(c)
		for i ∈ 1:m
			if (i==1 || c[i]+1 <= c[i-1]) && v*pr[i] ∉ vis
				nv = v*pr[i]
				push!(vis, nv)
				d = copy(c)
				d[i] += 1
				ct = cost(d)
				if ct >= 2*n
					ans = min(ans, nv)
				elseif nv < ans
					enqueue!(pq, d => nv)
				end
			end
		end
	end
	println()
	return ans
end

@time ans = string(solve())
open("answer.txt", "w") do af write(af, ans) end
println(ans)