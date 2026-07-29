import HautevilleHouse.LinearDiophantineEquationsTheoremCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace LinearDiophantineEquationsTheoremCanonicalLaneLean

def gateClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : AdmissibleClass) : gateClosed A :=
  by
    unfold gateClosed
    exact A.gateWitness

end LinearDiophantineEquationsTheoremCanonicalLaneLean
end HautevilleHouse