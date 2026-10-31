# Performance benchmarks for GameTheoryJuMP.jl, compatible with AirspeedVelocity.jl.
#
# Compare the working tree against main from the repository root:
#
#     benchpkg GameTheoryJuMP --path=. --rev=main,dirty
#
# Or run the suite directly:
#
#     julia --project=benchmark -e 'include("benchmark/benchmarks.jl"); run(SUITE; verbose = true)'

using BenchmarkTools
using GameTheoryJuMP

const SUITE = BenchmarkGroup()

SUITE["hello_world"] = @benchmarkable GameTheoryJuMP.hello_world()
