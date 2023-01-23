using Pkg

using Random
using Plots
using CurveFit
using DataStructures

plotlyjs()

# Make a histogram of the probability function. 
function part1(n::Int64)
    
    ### Task a) ###
    times = []
    # Run this as many times as you want, it will approach the actual probability distribution
    for i in 1:n
        pos = 0
        pos += rand()
        time = 1
        # Count how many steps before it's over the line, more than 200 is removed for performance
        while pos > 0 && time < 200
            pos += rand(-1:1)
            time += 1
        end
        # Don't want the abnormally large number of t=200 to affect the curvefit
        if time != 200
            push!(times, time)
        end
    end

    ### Task b) ###
    # plotting = counter(times)
    # println(plotting)
    # # fit = curve_fit(ExpFit, x, y)
    # # y0 = fit.(x)
    # println(typeof(plotting))
    # histogram(times)
    # xlims!(0, 100)

end


function main()
    part1(1000)
end

main()
    
