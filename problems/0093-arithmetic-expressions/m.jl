function gen(aa, bb, cc, dd)
	f = [Set() for i in 1:15]
	f[1], f[2], f[4], f[8] = Set([aa]), Set([bb]), Set([cc]), Set([dd])

	for m in g
		j = (m - 1) & m
		while j != 0
			k = m ⊻ j
			if j < k 
				union!(f[m], Set([a + b for a in f[j] for b in f[k]]))
				union!(f[m], Set([a * b for a in f[j] for b in f[k]]))
			end
			union!(f[m], Set([a - b for a in f[j] for b in f[k]]))
			union!(f[m], Set([a / b for a in f[j] for b in f[k] if b != 0]))
			j = (j - 1) & m
		end
	end
	return Set([x for x in f[15] if x > 0 && abs(round(x) - x) < 0.0001])
end

function solve(b)
	global g = sort([i for i in 0:15 if count_ones(i) >= 2], by = count_ones)

	r = 0
	k = ""
	for aa in 1:b
		for bb in aa+1:b
			for cc in bb+1:b
				for dd in cc+1:b
					f = gen(aa, bb, cc, dd)
					n = 1
					while n in f
						n += 1
					end
					if n > r
						r = n
						k = "$aa$bb$cc$dd"
					end
				end
			end
		end
	end
	return k
end

open("answer.txt", "w") do af
	write(af, solve(9))
end