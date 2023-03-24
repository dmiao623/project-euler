using Distributions
using DataStructures

rand_zero_sum(n, b) = rand(Dirichlet(n, 1.0)) .* 2 * b .- b / 3

value(c) = sum(c[i] ^ i for i ∈ 1:length(c))

function brute(n)
	gg = 20
	ss = 3
	cc = 30
	ss = 50
	vv = fill(0.05, gg)

	ω, ψ = 0, []
	a = [rand(Dirichlet(n, 1.0)) for i ∈ 1:ss]
	println("generation: 0\na = $a\n")
	for g ∈ 1:gg
		d = [rand_zero_sum(n, vv[g]) for i ∈ 1:cc]
		k = PriorityQueue()
		for s ∈ a
			for t ∈ d
				c = s + t
				if minimum(c) < 0 continue end
				if !haskey(k, c) enqueue!(k, c, value(c)) end
				if length(k) > ss dequeue!(k) end
			end
		end

		l = length(k)
		a = [dequeue!(k) for i ∈ 1:l]
		for s ∈ a if value(s) > ω ω, ψ = value(s), s end  end

		println("generation: $g\na = $a\n")
	end
	println("sample: $(rand_zero_sum(n, 0.05))")

	println("$n: $ω $ψ")
	ω
end

println(brute(2))
# println(sum(brute(i) for i ∈ 2:15))