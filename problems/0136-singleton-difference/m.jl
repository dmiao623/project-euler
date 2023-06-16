function solve()
	ν = 50 * 10^6
	μ = zeros(Int16, ν)
	for n ∈ 1:ν
		for r ∈ n÷3+1:ν
			k = (3r-n)*(n+r)
			if k > ν break end
			μ[k] += 1
		end
	end
	count(x->(x==1), μ)
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end