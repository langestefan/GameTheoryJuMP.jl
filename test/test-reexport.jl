@testitem "JuMP is reexported" begin
    @test isdefined(GameTheoryJuMP, :Model)
    model = Model()
    @variable(model, x >= 0)
    @test x isa VariableRef
end
