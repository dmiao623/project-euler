function solve()
	s, a = 0, ones(Int8, 11)
	for i ∈ 0:10^9-1
		p=1
		for i ∈ 1:11 p *= a[i] end
		s += p
		j=1
		a[1]+=1
		while a[j]==8
			a[j] = 1
			a[j+1] += 1
			j += 1
		end
	end	
	s
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end