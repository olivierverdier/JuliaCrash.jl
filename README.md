# JuliaCrash

[![Build Status](https://github.com/olivierverdier/JuliaCrash.jl/actions/workflows/CI.yml/badge.svg?branch=main)](https://github.com/olivierverdier/JuliaCrash.jl/actions/workflows/CI.yml?query=branch%3Amain)

[This code](https://github.com/JuliaLang/julia/issues/56248#issuecomment-2424219091) crashes Julia v1.7, 1.8, 1.9, 1.10.5, 1.11.1, but got fixed in https://github.com/JuliaLang/julia/pull/56264.

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
