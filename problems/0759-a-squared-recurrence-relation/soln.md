### Statement

[Problem - Project Euler #759](https://projecteuler.net/problem=759)

### Solution

Since we are given that $f(n)$ is always an integer, a natural first step is to examine $g(n)=f(n)/n$. A simple $\mathcal{O}(n)$ brute force is a good way to start. 



Code: 

```julia
n = 32
f = zeros(Int, n)
f[1] = 1
for i ∈ 1:n 
    2 * i <= n && (f[2 * i] = 2 * f[i])
    2 * i + 1 <= n && (f[2 * i + 1] = 2 * i + 1 + 2 * f[i] + f[i] // i)
end
g = [f[i] ÷ i for i ∈ 1:n]
print(g)
```

Output: 

```
[1, 1, 2, 1, 2, 2, 3, 1, 2, 2, 3, 2, 3, 3, 4, 1, 2, 2, 3, 2, 3, 3, 4, 2, 3, 3, 4, 3, 4, 4, 5, 1]
```



In particular, if we plot the frequency plot of $g(n)$, we start to see interesting patterns.



Code:

```julia
for k ∈ 1:n
	t = [i for i ∈ 1:n if g[i] == k]
	isempty(t) && break
	println("$k: $([i for i ∈ 1:n if g[i] == k])")
end
```

Output:

```
1: [1, 2, 4, 8, 16, 32]
2: [3, 5, 6, 9, 10, 12, 17, 18, 20, 24]
3: [7, 11, 13, 14, 19, 21, 22, 25, 26, 28]
4: [15, 23, 27, 29, 30]
5: [31]
```



Some things that stand out right away: powers of 2 have $g(n)=1$, one more than a power of $2$ has $g(n)=2$, and $g(2^k-1)=k$. From this we can conjecture that $g(n)$ is equal to the number of bits in the binary representation of $n$. Proving this is as simple as substituting $g(n)$ for $f(n)$ in the initial recurrence. If $n$ is even, then $f(n)/n$ = $2f(n/2)/n=2(n/2)g(n/2)/n=g(n/2)$. Otherwise, if $n$ is odd, then $f(n)/n=g(\frac{n-1}{2})+1$. 

Let $c(n)$ be the number of bits in $n$. Our task is now reduced to finding $\sum_{i=0}^n i^2c(i)^2$. Since this problems involves binary, one reduction we can make is to compute the answer for $n=2^m$. Then, the answer is given by
$$
\begin{align*}
\sum_{n=0}^{2^m-1}i^2c(i)^2&=\sum_{i=0}^{2^{m-1}-1}i^2c(i)^2+\sum_{i=2^{m-1}}^{2^m-1}i^2c(i)^2\\
&=a_{m-1}+\sum_{i=0}^{2^m-1}(i+2^{m-1})^2(c(i)+1)^2\\
&=a_{m-1}+\sum_{i=0}^{2^m-1}(i^2+2^mi+2^{2m-2})(c(i)^2+2c(i)+1).
\end{align*}
$$
Expanding gives us a nine term multinomial in $i$ and $c(i)$. Thus, for each $m$, we should also calculate the sum of those values up to $2^m$, each of which has a similar linear recurrence. We can express these transitions as a 9 by 9 matrix in terms of $m$. 

To calculate the answer for $n$ that is not a power of two, we can decompose it into a sum of powers of 2. Each bit has a fixed value $s$ and $k$, representing the sum in the prefix and the number of 1 bits seen so far. This can be corrected for using the coefficents calculated above, since we now we need to find $\sum_i (i+s)^2(c(i)+k)^2$.



Code:

```julia
using Mods

function solve(n=10^16, ζ=10^9+7) 
	function transition(m)
		return Mod{ζ}.([
			                2           0 0                 0               0 0                 0           0 0;
			  Mod{ζ}(2)^(m-1)           2 0                 0               0 0                 0           0 0;
			Mod{ζ}(2)^(2*m-2) Mod{ζ}(2)^m 2                 0               0 0                 0           0 0;
			                1           0 0                 2               0 0                 0           0 0;
			  Mod{ζ}(2)^(m-1)           1 0   Mod{ζ}(2)^(m-1)               2 0                 0           0 0;
			Mod{ζ}(2)^(2*m-2) Mod{ζ}(2)^m 1 Mod{ζ}(2)^(2*m-2)     Mod{ζ}(2)^m 2                 0           0 0;
			                1           0 0                 2               0 0                 2           0 0;
			  Mod{ζ}(2)^(m-1)           1 0       Mod{ζ}(2)^m               2 0   Mod{ζ}(2)^(m-1)           2 0;
			Mod{ζ}(2)^(2*m-2) Mod{ζ}(2)^m 1 Mod{ζ}(2)^(2*m-1) Mod{ζ}(2)^(m+1) 2 Mod{ζ}(2)^(2*m-2) Mod{ζ}(2)^m 2;
		])
	end

	n += 1
	m = floor(Int, log2(n))
	a = Vector{Vector{Mod{ζ, Int}}}()
	push!(a, Mod{ζ}.([1,0,0,0,0,0,0,0,0]))
	for i ∈ 1:m
		push!(a, transition(i)*last(a))
	end

	r, c, s = Mod{ζ}(0), Mod{ζ}(0), Mod{ζ}(0)
	for i ∈ m:-1:0
		((n >> i) & 1) == 0 && continue
		r += sum([s^2*c^2, 2*s*c^2, c^2, 2*s^2*c, 4*s*c, 2*c, s*s, 2*s, 1].*a[i+1])
		c += 1
		s += Mod{ζ}(2)^i
	end
	value(r)
end

@time ans = string(solve())
open("answer.txt", "w") do af write(af, ans) end
println(ans)
```

Output:

```
  0.136133 seconds (158.94 k allocations: 12.544 MiB, 2.86% gc time, 97.27% compilation time)
282771304
```

### Remarks

This definitely wasn't the most straightforward solution; there were more straightforward recurrences (e.g. $f_{i,j,k}$ is the sum of $i^j$ for $c(i)=k$), but being able to take advantage of Julia's built-in matrix functions were definitely a big plus. 

Following [this comment](https://projecteuler.net/thread=759#383708), I was able to derive the closed-form using Mathematica and the recurrence given above. With this optimization, the problem can be solved in true $\mathcal{O}(\log n)$. 

