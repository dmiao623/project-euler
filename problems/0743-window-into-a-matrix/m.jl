using Mods

function solve(n=10^16, k=10^8, z=10^9+7)
    f, g = zeros(Int64, k+1), zeros(Int64, k+1)
    f[1] = 1
    for i ∈ 2:k+1 f[i] = f[i-1]*(i-1)%z end
    g[k+1] = invmod(f[k+1], z)
    for i ∈ k:-1:1 g[i] = g[i+1]*i%z end
    comb(p, q) = f[p+1]*g[p-q+1]%z*g[q+1]%z

    k₂ = Mod{z}(2)^(n÷k)
    ans, p₂ = Mod{z}(0), Mod{z}(k%2==0 ? 1 : k₂)
    k₂ ^= 2
    for x ∈ k%2:2:k
        ans += p₂*comb(k-x, (k-x)÷2)*comb(k,x)
        p₂ *= k₂
    end
    value(ans)
end

@time ans = string(solve())
open("answer.txt", "w") do af write(af, ans) end
println(ans)