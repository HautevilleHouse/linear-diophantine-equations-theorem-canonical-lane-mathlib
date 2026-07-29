import HautevilleHouse.LinearDiophantineEquationsTheoremCanonicalLaneLean.LinearDiophantineSolver

namespace HautevilleHouse
namespace LinearDiophantineEquationsTheoremCanonicalLaneLean

structure HilbertBasis where
  eq : LinearDiophantineEquation
  generators : List (ℕ → ℕ)
  cone : Set (ℕ → ℕ)
  finitelyGenerated : True

end LinearDiophantineEquationsTheoremCanonicalLaneLean
end HautevilleHouse
