function generate_val(θ::BigFloat, n::Int)
	local b = θ
	local s = string(floor(Int, θ)) * "."
	for i ∈ 1:n
		b = floor(Int, b) * (b - floor(Int, b) + 1)
		s *= string(floor(Int, b))
	end
	parse(BigFloat, s)
end

function solve(bl::BigFloat=big"2.", br::BigFloat=big"3.", ι::Int=200, ρ::Int=24)
	for i ∈ 1:ι
		local bm = (bl + br) / 2
		if generate_val(bm, ρ) < bm
			br = bm
		else
			bl = bm
		end
	end
	string(bl)[1:ρ+2]
end

setprecision(BigFloat, 1024)
@time ans = string(solve())
open("answer.txt", "w") do af write(af, ans) end
println(ans)