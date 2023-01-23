using Pkg

using Random
using Plots

plotlyjs()

x = range(0,10, length=100)
y = sin.(x)
plot(x,y, label="sin(x)")

# function part1a(n::Int64)
#     pos = 0
#     times = []
#     # Run this as many times as you want, it will approach the actual probability distribution
#     for i in 1:n
#         time = 1
#         # Use abs value as it does not matter if first step goes back or forward
#         pos += (rand())
#         while pos > 0
#             pos += rand(-1:1)
#             time += 1
#         end
#         push!(times, time)
#     end
#     histogram(times)
# end

# function main()
#     part1a(10000)
# end

# main()
    
