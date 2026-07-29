import HautevilleHouse.LinearDiophantineEquationsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsTheoremCanonicalLaneLean

structure LinearDiophantineEquation where
  coeffs : ℕ → ℕ
  n : ℕ
  target : ℕ

structure SolutionSpace (eq : LinearDiophantineEquation) where
  solutions : Set (ℕ → ℕ)
  dimension : ℕ

end LinearDiophantineEquationsTheoremCanonicalLaneLean
end HautevilleHouse
