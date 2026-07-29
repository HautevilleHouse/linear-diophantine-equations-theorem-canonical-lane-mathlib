import HautevilleHouse.LinearDiophantineEquationsTheoremCanonicalLaneLean.TheoremStatement
import CanonicalLaneMathlibCore
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace LinearDiophantineEquationsTheoremCanonicalLaneLean

open HautevilleHouse.CanonicalLaneMathlibCore

structure LinearDiophantineSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure LinearDiophantineAdmittedObject where
  space : LinearDiophantineSpace
  integralSolution : Prop
  boundedHeight : Prop
  solutionModel : Type
  solutionTopology : TopologicalSpace solutionModel
  witness : Prop
  conclusion : witness

structure LinearDiophantineEndgameState where
  object : LinearDiophantineAdmittedObject

def LinearDiophantineWitnessClosed (O : LinearDiophantineAdmittedObject) : Prop :=
  O.witness

end LinearDiophantineEquationsTheoremCanonicalLaneLean
end HautevilleHouse