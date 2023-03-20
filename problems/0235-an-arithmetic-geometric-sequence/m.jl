using Plots
using Printf

function solve(n, k::BigFloat)
	function μ(r::BigFloat) return sum((900 - 3 * k) * r ^ (k - 1) for k ∈ 1:n) end

	bl::BigFloat, br::BigFloat = 1, 1.05
	for i ∈ 1:100
		bm::BigFloat = (bl + br) / 2
		if μ(bm) < k br = bm
		else bl = bm end
	end
    bl
end

setprecision(1024)
open("answer.txt", "w") do af
	write(af, @sprintf("%.12f", solve(5000, BigFloat(-600000000000))))
end