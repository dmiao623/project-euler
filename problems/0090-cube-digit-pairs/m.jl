function gen(i, b)
	if length(b) == 6 return [Set(b)] end
	if i == 10 return [] end
	return vcat(gen(i + 1, b), gen(i + 1, push!(copy(b), i)))
end

function solve() 
	 a = gen(0, [])
	 for x in a 
	 	if 6 in x push!(x, 9) end
	 	if 9 in x push!(x, 6) end
	 end

	 r = 0
	 c = [x ^ 2 for x in 1:9]
	 for i ∈ eachindex(a), j ∈ i:length(a)
	 	x, y, k = a[i], a[j], 0
	 	for z ∈ c
	 		if (z ÷ 10 in x && z % 10 in y) || (z % 10 in x && z ÷ 10 in y) k += 1 end
	 	end
	 	if k == 9 r += 1 end
	 end
	 r
end

@time ans = string(solve())
open("answer.txt", "w") do af write(af, ans) end
println(ans)