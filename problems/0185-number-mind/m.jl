using Random
using ProgressBars

function solve() 
	r = Vector{Pair{String, Int32}}()
	for line ∈ eachline("data.txt")
		a = split(line, " ")
		push!(r, a[1] => parse(Int32, SubString(a[2], 2)))
	end

	function value(state)
		sum(abs(sum(state[i] == t.first[i] ? 1 : 0 for i ∈ 1:n) - t.second) for t ∈ r)
	end

	Random.seed!(633);

	n = 16
	while true
		tem = 10 ^ 6
		Δtem = 0.999
		ζstate = randstring('0':'9', n)
		ζvalue = value(ζstate)
		itr = 200000
		for i ∈ 1:itr
			ρind = rand(1:n)
			ρchar = rand('0':'9')
			νstate = ζstate[1:ρind - 1] * ρchar * ζstate[ρind+1:end]
			νvalue = value(νstate)
			if νvalue < ζvalue || exp((ζvalue - νvalue) / tem) > rand(Float64)
				ζstate = νstate
				ζvalue = νvalue
				if ζvalue == 0
					return ζstate
				end
			end
			tem *= Δtem
		end
	end
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end