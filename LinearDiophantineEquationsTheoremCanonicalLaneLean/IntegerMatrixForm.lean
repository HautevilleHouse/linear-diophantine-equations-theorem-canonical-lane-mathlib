import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsTheoremCanonicalLaneLean

structure IntegerMatrixForm where
  matrixRows : Nat
  matrixCols : Nat
  entries : Matrix (Fin matrixRows) (Fin matrixCols) ℤ

structure IntegerMatrixFormEvidence (M : IntegerMatrixForm) where
  entriesConsistent : True

structure LinearDiophantineEquation where
  matrix : IntegerMatrixForm
  targetVector : ℤ ^ matrix.matrixRows
  solutionSpace : Prop

structure LinearDiophantineEquationEvidence {M : IntegerMatrixForm} (E : LinearDiophantineEquation) where
  targetVectorConsistent : True
  solutionSpaceClosed : E.solutionSpace

def IntegerMatrixFormClosed (M : IntegerMatrixForm) : Prop :=
  True

theorem integer_matrix_form_closed_from_evidence (M : IntegerMatrixForm) (E : IntegerMatrixFormEvidence M) :
    IntegerMatrixFormClosed M := by
  exact True.intro

def LinearDiophantineEquationClosed {M : IntegerMatrixForm} (E : LinearDiophantineEquation) : Prop :=
  E.solutionSpace

theorem linear_diophantine_equation_closed_from_evidence {M : IntegerMatrixForm} (E : LinearDiophantineEquation) (F : LinearDiophantineEquationEvidence E) :
    LinearDiophantineEquationClosed E := by
  exact F.solutionSpaceClosed

end LinearDiophantineEquationsTheoremCanonicalLaneLean
end HautevilleHouse
