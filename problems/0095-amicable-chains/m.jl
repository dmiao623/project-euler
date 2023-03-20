function solve(n)
	a = fill(0, n)
	open("../../library/sequences/sum-divisors.txt", "r") do df
		for i in 1:n
			a[i] = parse(Int32, readline(df)) - i
		end
	end

	vis = fill(0, n)
	vis[1] = 1
	m = 0
	q = -1
	for s in 2:n
		x = s
		while x <= n && vis[x] == 0
			vis[x] = s
			x = a[x]
		end
		if x <= n && vis[x] == s
			c = 1
			d = x
			y = a[x]
			while y != x
				c += 1
				d = min(d, y)
				y = a[y]
			end
			if m < c 
				m = c
				q = d
			end
		end
	end

	q
end

open("answer.txt", "w") do af
	write(af, string(solve(10 ^ 6)))
end