using Primes

function solve() 
	ʂ, c, n = BigInt(1), 2, 0
	while c <= 190
		ʂ *= c
		c = nextprime(c + 1)
		n += 1
	end

	a₀, a₁, c = Vector{BigInt}(), Vector{BigInt}(), 2
	for i ∈ 1:n÷2
		push!(a₀, c)
		c = nextprime(c + 1)
	end
	for i ∈ n÷2+1:n
		push!(a₁, c)
		c = nextprime(c + 1)
	end

	♮ = n ÷ 2
	b₀ = zeros(BigInt, 1 << ♮)
	for i ∈ 0:(1<<♮)-1
		p = BigInt(1)
		for j ∈ 1:♮
			if (i >> (j - 1) & 1) != 0
				p *= a₀[j]
			end
		end
		b₀[i+1] = p
	end

	b₁ = zeros(BigInt, 1 << ♮)
	for i ∈ 0:(1<<♮)-1
		p = BigInt(1)
		for j ∈ 1:♮
			if (i >> (j - 1) & 1) != 0
				p *= a₁[j]
			end
		end
		b₁[i+1] = p
	end

	sort!(b₀)
	sort!(b₁)

	k = trunc(BigInt, sqrt(ʂ))
	Ϟ₀, Ϟ₁ = 1, 1 << ♮
	ϡ = BigInt(0)
	while Ϟ₀ <= (1 << ♮) && Ϟ₁ != 0
		while Ϟ₁ != 0 && b₀[Ϟ₀] * b₁[Ϟ₁] > k
			Ϟ₁ -= 1
		end
		if Ϟ₁ != 0
			ϡ = max(ϡ, b₀[Ϟ₀] * b₁[Ϟ₁])
		end
		Ϟ₀ += 1
	end

	ϡ % BigInt(10000000000000000)
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end