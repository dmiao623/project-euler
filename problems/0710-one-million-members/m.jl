using Mods

function solve()
	n = 10^7
	f = zeros(Mod{10^6}, n+1)
	g = zeros(Mod{10^6}, n+1)
	f[1] = f[2] = f[3] = g[3] = 1
	σf₁, σf₂ = f[2], f[1] + f[3]
	σg₁, σg₂ = g[2], g[1] + g[3]
	for i ∈ 3:n
		f[i+1] = σf₁ - (i<4 ? 0 : f[i-4+1]) + 1
		σf₁ += f[i+1]
		σf₁, σf₂ = σf₂, σf₁
		g[i+1] = σg₁ + (i<4 ? 0 : f[i-4+1])
		σg₁ += g[i+1]
		σg₁, σg₂ = σg₂, σg₁
		if i > 3 && g[i+1] == 0 return i end
	end
end

@time open("answer.txt", "w") do af write(af, string(solve())) end