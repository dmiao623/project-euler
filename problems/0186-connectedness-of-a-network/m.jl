using DataStructures

function solve()
	z = 1000000
	pm = 524287 + 1

	p = [i for i in 1:z]
	s = fill(1, z)

	function _find(u)
		kk = u
		while u != p[u]
			u = p[u]
		end
		while kk != p[kk]
			t = p[kk]
			p[kk] = u
			kk = t
		end
		return u
	end

	function _union(u, v)
		u, v = _find(u), _find(v)
		if u != v
			if s[u] < s[v] 
				u, v = v, u 
			end
			s[u] += s[v]
			p[v] = u
		end
	end

	q1, q2 = Queue{Int64}(), Queue{Int64}()
	for i ∈ 1:55  enqueue!(q1, (100003 - 200003 * i + 300007 * i ^ 3) % z) end
	for i ∈ 32:55 enqueue!(q2, (100003 - 200003 * i + 300007 * i ^ 3) % z) end

	function _pop() 
		n1, n2 = dequeue!(q1), dequeue!(q2)
		n = (n1 + n2) % z
		enqueue!(q1, n)
		enqueue!(q2, n)
		return n1
	end

	c = 0
	while s[_find(pm)] < 0.99 * z
		u, v = _pop() + 1, _pop() + 1
		if u == v continue end
		c += 1
		_union(u, v)
	end

	return c
end

open("answer.txt", "w") do af
	write(af, string(solve()))
end