function solve()
	s = 0
	open("data.txt", "r") do df
		while !eof(df) 
			a = parse.(Int, split(readline(df), ","))
			n = size(a, 1)
			σ = fill(0 => 0, 2^n)
			for i ∈ 0:(1<<n)-1
				σ[i+1] = (sum([a[j] for j ∈ 1:n if i>>(j-1)&1==1]) => count_ones(i))
			end

			sort!(σ)

			r = true
			for i ∈ 2:(1<<n)-1 
				if σ[i-1].second > σ[i].second || σ[i-1].first == σ[i].first 
					r = false
					break 
				end
			end 
			r && (s += sum(a))
		end
	end
	return s
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end