@testitem "Aqua quality assurance" tags = [:quality] begin
    using Aqua: Aqua
    Aqua.test_all(GameTheoryJuMP)
end

@testitem "JET static analysis" tags = [:quality] begin
    using JET: JET
    JET.test_package(GameTheoryJuMP; target_modules = (GameTheoryJuMP,))
end
