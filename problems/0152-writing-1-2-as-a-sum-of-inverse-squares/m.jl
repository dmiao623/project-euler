using Primes

function solve()
	n, b = 80, 20
	ϕ = [i for i::Int ∈ 2:n]
	for i ∈ 40:80 isprime(i) && filter!(x->x≠i, ϕ) end
	σ = [numerator(sum(1//j^2 for j ∈ 1:b if (i>>(j-1))&1≠0)) for i ∈ 1:2^b-1]

	ψ = copy(ϕ)
	for p ∈ ψ if p == 16 || p == 27 || (isprime(p) && p >= 5)
			k, b = n÷p, -1
			for i ∈ 1:2^k-1 if σ[i]%p^2 == 0 
				b = i
				break
			end end
			b == -1 && filter!(x->x%p≠0, ϕ)
	end end

	p = length(ϕ)÷2
	☡p = [(sum(1//BigInt(ϕ[j])^2   for j ∈ 1:p if (i>>(j-1))&1≠0)) 
		for i ∈ 1:2^p-1]
	sort!(☡p)

	q = length(ϕ)-p
	☡q = [(sum(1//BigInt(ϕ[j+p])^2 for j ∈ 1:q if (i>>(j-1))&1≠0)) 
		for i ∈ 1:2^q-1]
	sort!(☡q)

	qq = Vector{Pair{Rational{BigInt}, Int}}()
	for i ∈ 1:2^q-1
		if i==1 || ☡q[i-1]≠☡q[i]
			push!(qq, ☡q[i]=>1)
		else
			qq[end] = ☡q[i]=>qq[end].second+1
		end
	end

	ρ, id = 0, length(qq)
	for x ∈ ☡p
		while id>=1 && 2*(x+qq[id].first) > 1 id -= 1 end
		if id>=1 && 2*(x+qq[id].first) == 1 ρ += qq[id].second end
	end

	ρ
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end