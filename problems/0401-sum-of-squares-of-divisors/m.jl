using Mods

ρ₂(x::Int128) = (x*(x+1)*(2*x+1)÷6)

function solve() 
	n, z = 10^15, 10^9

	nₛ = isqrt(n)
	ans = Mod{z}(0)
	for i ∈ 1:nₛ ans += ρ₂(Int128((n÷i)%z))%z end
	for j ∈ 1:nₛ ans += j^2%z*(n÷j%z)%z end
	ans -= nₛ*(ρ₂(Int128(nₛ))%z)%z
	value(ans)
end

@time open("answer.txt", "w") do af write(af, string(solve())) end