import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsTheoremCanonicalLaneLean

structure AdmissibleClass where
  object : LinearDiophantineEquation
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  LinearDiophantineClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end LinearDiophantineEquationsTheoremCanonicalLaneLean
end HautevilleHouse