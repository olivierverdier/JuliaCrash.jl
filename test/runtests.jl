using Test
using Manifolds



@testset "Julia crash" for M in
    [
        Sphere(2),
    ]
    @test_throws TypeError [] isa Vector{<:Sphere(3)}
end
