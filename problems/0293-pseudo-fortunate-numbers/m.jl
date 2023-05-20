using Primes
using DataStructures

function solve()
    n = 10 ^ 9
    p = [2, 3, 5, 7, 11, 13, 17, 19, 23, 29]

    ad = [2]
    q = Queue{Pair{Int, Int}}()
    enqueue!(q, 2 => 1)
    while length(q) > 0
        u, k = dequeue!(q)
        if p[k] * u <= n
            push!(ad, p[k] * u)
            enqueue!(q, p[k] * u => k)
        end
        if p[k + 1] * u <= n
            push!(ad, p[k + 1] * u)
            enqueue!(q, p[k + 1] * u => k + 1)
        end
    end

    return sum(unique([nextprime(x + 2) - x for x ∈ ad]))
end

open("answer.txt", "w") do af
    write(af, string(solve()))
end