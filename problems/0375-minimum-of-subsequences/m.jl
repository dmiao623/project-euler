using DataStructures

nums(n) = n*(n+1)÷2

function brute_force(a::Vector{Int})
	l::Vector{Int} = zeros(Int32, length(a))
	r::Vector{Int} = zeros(Int32, length(a))
	stk = Stack{Int32}()
	for i ∈ 1:length(a)
		while length(stk) > 0 && a[first(stk)] >= a[i] pop!(stk) end
		l[i] = length(stk) == 0 ? 0 : first(stk)
		push!(stk, i)
	end
	empty!(stk)
	for i ∈ length(a):-1:1
		while length(stk) > 0 && a[first(stk)] > a[i] pop!(stk) end
		r[i] = length(stk) == 0 ? length(a)+1 : first(stk)
		push!(stk, i)
	end

	sum(Int128(r[i]-i)*(i-l[i])*a[i] for i ∈ 1:length(a))
end

function solve()
	n, s, z = 2*10^9, 290797, 50515093

	δ = Dict()
	clen, mcyc, mpos = -1, z, -1
	for i ∈ 1:z
		s = s^2%z
		if s < mcyc mcyc, mpos = s, i end
		haskey(δ, s) && (clen = i-1; break)
		δ[s] = i
	end

	s = mcyc
	arr = zeros(Int, clen-1)
	for i ∈ 1:clen-1
		s = s^2%z
		arr[i] = s
	end

	tot, ans::Int128 = 0, 0
	ans += brute_force(arr[clen-mpos+1:min(clen-1,clen-mpos+n)])
	tot += nums(min(clen-1,clen-mpos+n)-(clen-mpos+1)+1)
	tem::Int128 = brute_force(arr)
	for i ∈ mpos:clen:n
		ans += i+clen <= n ? tem : brute_force(arr[1:n-i])
		tot += i+clen <= n ? nums(clen-1) : nums(n-i)
	end

	ans += Int128(mcyc)*(nums(n)-tot)
	ans
end

open("answer.txt", "w") do af write(af, string(solve())) end