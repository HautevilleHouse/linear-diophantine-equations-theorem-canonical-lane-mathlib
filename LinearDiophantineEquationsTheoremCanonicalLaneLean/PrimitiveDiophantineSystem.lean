import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsTheoremCanonicalLaneLean

structure PrimitiveDiophantineSystem where
  variables : Nat
  equations : Nat
  coefficientMatrix : List (List Int)
  constantVector : List Int
  systemDefined : Prop
  systemDefinedTerm : systemDefined

structure PrimitiveSolution where
  system : PrimitiveDiophantineSystem
  assignment : List Int
  satisfiesEquations : Prop
  satisfiesEquationsTerm : satisfiesEquations

end LinearDiophantineEquationsTheoremCanonicalLaneLean
end HautevilleHouse