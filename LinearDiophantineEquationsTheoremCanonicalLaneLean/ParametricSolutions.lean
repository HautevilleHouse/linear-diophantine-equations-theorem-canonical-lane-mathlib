import HautevilleHouse.LinearDiophantineEquationsTheoremCanonicalLaneLean.LinearDiophantineSolver

namespace HautevilleHouse
namespace LinearDiophantineEquationsTheoremCanonicalLaneLean

structure ParametricSolution (eq : LinearDiophantineEquation) where
  parameters : ℕ → ℕ
  paramCount : ℕ
  solutionMap : (ℕ → ℕ) → ℕ → ℕ
  complete : ∀ s : SolutionSpace eq, ∃ p : ℕ → ℕ, solutionMap p = s

end LinearDiophantineEquationsTheoremCanonicalLaneLean
end HautevilleHouse
