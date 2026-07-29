import HautevilleHouse.LinearDiophantineEquationsTheoremCanonicalLaneLean.LinearDiophantineEquation

namespace HautevilleHouse
namespace LinearDiophantineEquationsTheoremCanonicalLaneLean

structure ChineseRemainderEquation where
  moduli : List ℕ
  remainders : List ℤ
  solutionExists : Prop
  uniqueModProduct : Prop
  crtCondition : Prop

structure ChineseRemainderEvidence (C : ChineseRemainderEquation) where
  solutionExistsClosed : C.solutionExists
  uniqueModProductClosed : C.uniqueModProduct
  crtConditionClosed : C.crtCondition

def ChineseRemainderClosed (C : ChineseRemainderEquation) : Prop :=
  C.solutionExists ∧ C.uniqueModProduct ∧ C.crtCondition

theorem chinese_remainder_closed_from_evidence (C : ChineseRemainderEquation) (Ev : ChineseRemainderEvidence C) : ChineseRemainderClosed C :=
  And.intro Ev.solutionExistsClosed (And.intro Ev.uniqueModProductClosed Ev.crtConditionClosed)

end LinearDiophantineEquationsTheoremCanonicalLaneLean
end HautevilleHouse