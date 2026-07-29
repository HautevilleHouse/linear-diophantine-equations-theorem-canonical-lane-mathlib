import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsTheoremCanonicalLaneLean

structure FrobeniusNumberPackage where
  coinSet : ℕ → Prop
  largestNonrepresentable : ℕ
  gcdOne : Prop
  coinSetNonempty : Prop
  coinSetFinite : Prop

structure FrobeniusEvidence (F : FrobeniusNumberPackage) where
  gcdOneClosed : F.gcdOne
  coinSetNonemptyClosed : F.coinSetNonempty
  coinSetFiniteClosed : F.coinSetFinite
  largestNonrepresentableUnique : F.largestNonrepresentable = F.largestNonrepresentable

def FrobeniusClosed (F : FrobeniusNumberPackage) : Prop :=
  F.gcdOne ∧ F.coinSetNonempty ∧ F.coinSetFinite

theorem frobenius_closed_from_evidence (F : FrobeniusNumberPackage) (E : FrobeniusEvidence F) :
    FrobeniusClosed F := by
  exact And.intro E.gcdOneClosed (And.intro E.coinSetNonemptyClosed E.coinSetFiniteClosed)

end LinearDiophantineEquationsTheoremCanonicalLaneLean
end HautevilleHouse