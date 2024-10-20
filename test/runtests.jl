using Test

@testset begin
    for M ∈ [42]
        try
            [] isa Vector{<:3}
        catch e
            if e isa TypeError
                3
            else
                7
            end
        end
    end
end
