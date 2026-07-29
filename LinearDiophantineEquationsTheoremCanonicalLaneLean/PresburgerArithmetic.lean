import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsTheoremCanonicalLaneLean

structure PresburgerArithmeticPackage where
  formulas : Type
  quantifierElimination : Prop
  satisfiabilityDecidable : Prop
  linearDiophantineFragment : Prop
  closureUnderNegation : Prop

structure PresburgerEvidence (P : PresburgerArithmeticPackage) where
  quantifierEliminationClosed : P.quantifierElimination
  satisfiabilityDecidableClosed : P.satisfiabilityDecidable
  linearDiophantineFragmentClosed : P.linearDiophantineFragment
  closureUnderNegationClosed : P.closureUnderNegation

def PresburgerClosed (P : PresburgerArithmeticPackage) : Prop :=
  P.quantifierElimination ∧ P.satisfiabilityDecidable ∧ P.linearDiophantineFragment ∧ P.closureUnderNegation

theorem presburger_closed_from_evidence (P : PresburgerArithmeticPackage) (E : PresburgerEvidence P) :
    PresburgerClosed P := by
  exact And.intro E.quantifierEliminationClosed
    (And.intro E.satisfiabilityDecidableClosed
      (And.intro E.linearDiophantineFragmentClosed E.closureUnderNegationClosed))

end LinearDiophantineEquationsTheoremCanonicalLaneLean
end HautevilleHouse