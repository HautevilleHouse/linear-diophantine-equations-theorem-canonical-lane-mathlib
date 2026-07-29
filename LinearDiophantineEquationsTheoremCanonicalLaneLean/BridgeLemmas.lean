import HautevilleHouse.LinearDiophantineEquationsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsTheoremCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  LinearDiophantineClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) : bridgeClosed A :=
  by
    unfold bridgeClosed
    unfold LinearDiophantineClosed
    exact And.intro A.object.solutionExists A.object.homogeneous

end LinearDiophantineEquationsTheoremCanonicalLaneLean
end HautevilleHouse