import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsTheoremCanonicalLaneLean

structure SmithNormalFormPackage {S : PrimitiveDiophantineSystem} where
  diagonalizationExists : Prop
  invariantsComputed : Prop
  transformationMatrices : Prop

structure SmithNormalFormEvidence {S : PrimitiveDiophantineSystem} (N : SmithNormalFormPackage S) where
  diagonalizationExistsClosed : N.diagonalizationExists
  invariantsComputedClosed : N.invariantsComputed
  transformationMatricesClosed : N.transformationMatrices

def SmithNormalFormClosed {S : PrimitiveDiophantineSystem} (N : SmithNormalFormPackage S) : Prop :=
  N.diagonalizationExists ∧ N.invariantsComputed ∧ N.transformationMatrices

theorem smith_normal_form_closed_from_evidence {S : PrimitiveDiophantineSystem} (N : SmithNormalFormPackage S) (E : SmithNormalFormEvidence N) : SmithNormalFormClosed N := by
  exact And.intro E.diagonalizationExistsClosed (And.intro E.invariantsComputedClosed E.transformationMatricesClosed)

end LinearDiophantineEquationsTheoremCanonicalLaneLean
end HautevilleHouse