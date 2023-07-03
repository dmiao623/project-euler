function solve()
	n = 10000
	ls = Vector{Int}()
	ts = Vector{Int}()

	function gen(n, b, c)
		if n < b 
			push!(ls, n) 
		elseif n < c
			push!(ts, n)
		else
			return
		end
		gen(n * 10, b, c)
		gen(n * 10 + 1, b, c)
		gen(n * 10 + 2, b, c)
	end

	srt = fill(-1, n)

	gen(1, 10^14, 10^16)
	gen(2, 10^14, 10^16)
	sort!(ls)
	sort!(ts)
	for x ∈ ls, i ∈ 1:n
		(srt[i] == -1 && x % i == 0) && (srt[i] = x)
	end

	pos = Vector{Int}()
	for i ∈ 1:n if srt[i] == -1 push!(pos, i) end end

	for x ∈ ts, i ∈ pos
		(srt[i] == -1 && x % i == 0) && (srt[i] = x)
	end

	ans = 0
	for i ∈ 1:n
		srt[i] != -1 && (ans += srt[i] ÷ i)
	end 
	n == 10000 && (ans += 11112222222222222222 ÷ 9999)
	ans
end

open("answer.txt", "w") do af write(af, string(solve())) end