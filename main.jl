using Pkg


using Random
using Plots

plotlyjs()

function part1a(n::Int64)
    times = []
    # Run this as many times as you want, it will approach the actual probability distribution
    for i in 1:n
        pos = 0
        # Use abs value as it does not matter if first step goes back or forward
        pos += rand()
        time = 1
        # Count how many steps before it's over the line
        while pos > 0 || time > 200
            pos += rand(-1:1)
            time += 1
        end
        push!(times, time)
    end
    histogram(times)
    xlims!(0, 100)
end

function main()
    part1a(1000)
end

main()
    
