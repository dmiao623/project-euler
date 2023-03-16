function solve()
    d = Dict()
    z = Dict()
    i = 0
    l = 0
    r = -1
    while true
        k = String(sort(collect(string(i ^ 3))))
        if length(k) != l
            l = length(k)
            empty!(d)
        end
        if haskey(d, k)
            d[k] += 1
            if d[k] == 5
                r = k
                break
            end
        else
            z[k] = i
            d[k] = 1
        end
        i += 1
    end
    return z[r] ^ 3
end

open("answer.txt", "w") do df
    write(df, string(solve()))
end