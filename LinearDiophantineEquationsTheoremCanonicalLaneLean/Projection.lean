import HautevilleHouse.LinearDiophantineEquationsTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

def linearDiophantineProjection : Projection LinearDiophantineEndgameState := {
  toFun := fun x => x,
  idempotent := by intro x; rfl
}

theorem linear_diophantine_projection_idempotent (x : LinearDiophantineEndgameState) :
    linearDiophantineProjection.toFun (linearDiophantineProjection.toFun x) = linearDiophantineProjection.toFun x := by
  exact linearDiophantineProjection.idempotent x

end LinearDiophantineEquationsTheoremCanonicalLaneLean
end HautevilleHouse