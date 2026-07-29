import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsTheoremCanonicalLaneLean

structure SmithNormalForm where
  matrix : IntegerMatrixForm
  unimodularLeft : Matrix (Fin matrix.matrixRows) (Fin matrix.matrixRows) ℤ
  unimodularRight : Matrix (Fin matrix.matrixCols) (Fin matrix.matrixCols) ℤ
  diagonalEntries : List ℕ
  conditionsSatisfied : Prop

structure SmithNormalFormEvidence (S : SmithNormalForm) where
  conditionsSatisfiedClosed : S.conditionsSatisfied

def SmithNormalFormClosed (S : SmithNormalForm) : Prop :=
  S.conditionsSatisfied

theorem smith_normal_form_closed_from_evidence (S : SmithNormalForm) (E : SmithNormalFormEvidence S) :
    SmithNormalFormClosed S := by
  exact E.conditionsSatisfiedClosed

end LinearDiophantineEquationsTheoremCanonicalLaneLean
end HautevilleHouse
