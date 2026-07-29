import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsTheoremCanonicalLaneLean

structure FrobeniusCoinPackage where
  coinDenominations : List Nat
  largestNonRepresentable : Prop
  formulaForTwoCoins : Prop
  algorithmForGeneral : Prop

structure FrobeniusCoinEvidence (F : FrobeniusCoinPackage) where
  largestNonRepresentableClosed : F.largestNonRepresentable
  formulaForTwoCoinsClosed : F.formulaForTwoCoins
  algorithmForGeneralClosed : F.algorithmForGeneral

def FrobeniusCoinClosed (F : FrobeniusCoinPackage) : Prop :=
  F.largestNonRepresentable ∧ F.formulaForTwoCoins ∧ F.algorithmForGeneral

theorem frobenius_coin_closed_from_evidence (F : FrobeniusCoinPackage) (E : FrobeniusCoinEvidence F) : FrobeniusCoinClosed F := by
  exact And.intro E.largestNonRepresentableClosed (And.intro E.formulaForTwoCoinsClosed E.algorithmForGeneralClosed)

end LinearDiophantineEquationsTheoremCanonicalLaneLean
end HautevilleHouse