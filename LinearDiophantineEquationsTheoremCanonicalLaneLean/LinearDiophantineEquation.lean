import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsTheoremCanonicalLaneLean

structure LinearDiophantineEquation where
  coefficients : List ℤ
  constantTerm : ℤ
  variableCount : ℕ
  solutionExists : Prop
  homogeneous : Prop

structure LinearDiophantineEvidence (E : LinearDiophantineEquation) where
  solutionExistsClosed : E.solutionExists
  homogeneousClosed : E.homogeneous

def LinearDiophantineClosed (E : LinearDiophantineEquation) : Prop :=
  E.solutionExists ∧ E.homogeneous

theorem linear_diophantine_closed_from_evidence (E : LinearDiophantineEquation) (Ev : LinearDiophantineEvidence E) : LinearDiophantineClosed E :=
  And.intro Ev.solutionExistsClosed Ev.homogeneousClosed

end LinearDiophantineEquationsTheoremCanonicalLaneLean
end HautevilleHouse