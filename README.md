# JuliaCrash

[![Build Status](https://github.com/olivierverdier/JuliaCrash.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/olivierverdier/JuliaCrash.jl/actions/workflows/CI.yml?query=branch%3Amain)

[This code](https://github.com/JuliaLang/julia/issues/56248#issuecomment-2424219091) crashes Julia:
```julia
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
```
