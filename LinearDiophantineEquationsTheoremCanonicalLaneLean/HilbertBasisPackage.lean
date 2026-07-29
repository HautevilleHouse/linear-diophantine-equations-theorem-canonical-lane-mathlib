import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsTheoremCanonicalLaneLean

structure HilbertBasisPackage {S : PrimitiveDiophantineSystem} (P : SolutionExistencePackage S) where
  basisFinite : Prop
  basisGeneratesAllSolutions : Prop
  basisMinimal : Prop

structure HilbertBasisEvidence {S : PrimitiveDiophantineSystem} {P : SolutionExistencePackage S} (H : HilbertBasisPackage P) where
  basisFiniteClosed : H.basisFinite
  basisGeneratesAllSolutionsClosed : H.basisGeneratesAllSolutions
  basisMinimalClosed : H.basisMinimal

def HilbertBasisClosed {S : PrimitiveDiophantineSystem} {P : SolutionExistencePackage S} (H : HilbertBasisPackage P) : Prop :=
  H.basisFinite ∧ H.basisGeneratesAllSolutions ∧ H.basisMinimal

theorem hilbert_basis_closed_from_evidence {S : PrimitiveDiophantineSystem} {P : SolutionExistencePackage S} (H : HilbertBasisPackage P) (E : HilbertBasisEvidence H) : HilbertBasisClosed H := by
  exact And.intro E.basisFiniteClosed (And.intro E.basisGeneratesAllSolutionsClosed E.basisMinimalClosed)

end LinearDiophantineEquationsTheoremCanonicalLaneLean
end HautevilleHouse