function check_even(a, b, n)
	for i ∈ 1:n
		if a % 3 == b % 3
			return false
		end
		a ÷= 3
		b ÷= 3
	end
	return true
end

function check_odd(a, b, n)
	p = b % 3
	b ÷= 3
	for i ∈ 2:n
		if a % 3 == b % 3 || a % 3 == p
			return false
		end
		p = b % 3
		a ÷= 3
		b ÷= 3
	end
	return true
end

function solve() 
	f = fill(1, 3)
	for i ∈ 2:15
		if i % 2 == 0
			n = i ÷ 2
			b = 3 ^ n
			g = zeros(Int, b)
			for j ∈ 0:b-1
				for k ∈ 0:b-1
					if check_even(j, k, n) 
						g[j + 1] += f[k + 1]
					end
				end
			end
			f = g
		else 
			n = (i + 1) ÷ 2
			b = 3 ^ n
			g = zeros(Int, b)
			for j ∈ 0:b-1
				for k ∈ 0:b÷3-1
					if check_odd(k, j, n)
						g[j + 1] += f[k + 1]
					end
				end
			end
			f = g
		end
	end
	return sum(f)
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end