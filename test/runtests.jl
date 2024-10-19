using Test
using Manifolds



@testset "Julia crash" for M in
    [
        Sphere(2),
    ]
    [] isa Vector{<:Sphere(3)}
end
