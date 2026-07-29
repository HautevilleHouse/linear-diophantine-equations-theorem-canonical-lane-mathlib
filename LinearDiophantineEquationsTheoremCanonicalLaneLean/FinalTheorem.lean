import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsTheoremCanonicalLaneLean

def ConstrainedLinearDiophantineClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_linear_diophantine_endgame (A : AdmissibleClass) :
    ConstrainedLinearDiophantineClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end LinearDiophantineEquationsTheoremCanonicalLaneLean
end HautevilleHouse
