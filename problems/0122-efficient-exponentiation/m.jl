using DataStructures

function solve()
	f = 0
	k = fill(-1, 200)
	q = Queue{Vector{Int16}}()

	f = 2
	k[1] = 0
	k[191] = 11

	enqueue!(q, [1])
	while f < 200
		u = dequeue!(q)
		m = last(u)
		for i ∈ 1:length(u), j ∈ i:length(u)
			if u[i] + u[j] <= m || u[i] + u[j] > 200 continue end
			if k[u[i] + u[j]] == -1 
				k[u[i] + u[j]] = length(u)
				f += 1
			end
			enqueue!(q, push!(copy(u), u[i] + u[j]))
		end
	end
	return sum(k)
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end