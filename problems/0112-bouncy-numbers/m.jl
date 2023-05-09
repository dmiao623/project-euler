function bouncy(n)
	l = n % 10
	n ÷= 10
	ta, tb = true, true
	while n != 0
		d = n % 10
		n ÷= 10
		if d < l ta = false end
		if d > l tb = false end
		l = d
	end
	return !(ta || tb)
end

function solve()
	i, k = 1, 0
	while i < 100 || k < (i - 1) * 0.99
		k += bouncy(i) ? 1 : 0
		i += 1
	end
	return i - 1
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end