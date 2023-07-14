using Mods

function solve(n=10^4, m=10^4, ζ=10^9+7)
	fib::Vector{Int} = [1, 2]
	pty::Vector{Pair{Int, Int}} = Vector{Pair{Int, Int}}()
	while last(fib) <= n+m
		append!(fib, fib[end]+fib[end-1])
	end
	for a ∈ 0:n, b ∈ 0:m
		c = a^2+b^2
		isqrt(c)^2==c && isqrt(c) ∈ fib && a ≠ b && (push!(pty, (a=>b)))
	end

	f::Array{Int, 2} = zeros(Int, n+1, m+1)
	f[1,1] = 1
	@inbounds for i ∈ 1:n+1, j ∈ i:m+1
		@simd for x ∈ pty
			(a,b) = x
			if a < i && b < j
				f[i,j] += f[min(i-a,j-b),max(i-a,j-b)]
				f[i,j] >= ζ && (f[i,j] -= ζ)
			end
		end
	end
	f[n+1,m+1]
end

@time ans = string(solve())
open("answer.txt", "w") do af write(af, ans) end
println(ans)