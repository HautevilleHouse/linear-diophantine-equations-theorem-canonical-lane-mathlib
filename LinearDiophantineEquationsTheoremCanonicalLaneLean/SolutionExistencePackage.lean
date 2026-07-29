import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsTheoremCanonicalLaneLean

structure SolutionExistencePackage (S : PrimitiveDiophantineSystem) where
  necessaryCondition : Prop
  sufficientCondition : Prop
  algorithmExists : Prop
  algorithmCorrect : Prop

structure SolutionExistenceEvidence {S : PrimitiveDiophantineSystem} (P : SolutionExistencePackage S) where
  necessaryConditionClosed : P.necessaryCondition
  sufficientConditionClosed : P.sufficientCondition
  algorithmExistsClosed : P.algorithmExists
  algorithmCorrectClosed : P.algorithmCorrect

def SolutionExistenceClosed {S : PrimitiveDiophantineSystem} (P : SolutionExistencePackage S) : Prop :=
  P.necessaryCondition ∧ P.sufficientCondition ∧ P.algorithmExists ∧ P.algorithmCorrect

theorem solution_existence_closed_from_evidence {S : PrimitiveDiophantineSystem} (P : SolutionExistencePackage S) (E : SolutionExistenceEvidence P) : SolutionExistenceClosed P := by
  exact And.intro E.necessaryConditionClosed (And.intro E.sufficientConditionClosed (And.intro E.algorithmExistsClosed E.algorithmCorrectClosed))

end LinearDiophantineEquationsTheoremCanonicalLaneLean
end HautevilleHouse