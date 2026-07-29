import HautevilleHouse.LinearDiophantineEquationsTheoremCanonicalLaneLean.LinearDiophantineEquation

namespace HautevilleHouse
namespace LinearDiophantineEquationsTheoremCanonicalLaneLean

structure FrobeniusEquation where
  a : ℕ
  b : ℕ
  largestNonrepresentable : ℕ
  representsAllBeyond : ℕ → Prop
  solutionClassified : Prop

structure FrobeniusEvidence (F : FrobeniusEquation) where
  solutionClassifiedClosed : F.solutionClassified
  representsAllBeyondClosed : ∀ n, F.representsAllBeyond n

def FrobeniusClosed (F : FrobeniusEquation) : Prop :=
  F.solutionClassified ∧ ∀ n, F.representsAllBeyond n

theorem frobenius_closed_from_evidence (F : FrobeniusEquation) (Ev : FrobeniusEvidence F) : FrobeniusClosed F :=
  And.intro Ev.solutionClassifiedClosed Ev.representsAllBeyondClosed

end LinearDiophantineEquationsTheoremCanonicalLaneLean
end HautevilleHouse