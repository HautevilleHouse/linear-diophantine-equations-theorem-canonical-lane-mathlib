import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace LinearDiophantineEquationsTheoremCanonicalLaneLean

structure IntegerLattice where
  rank : ℕ
  basis : ℕ → ℤ × ℤ
  span : Set (ℤ × ℤ)
  discrete : Prop

structure LatticeEvidence (L : IntegerLattice) where
  basisIndependent : Prop
  discreteClosed : L.discrete
  rankFinite : L.rank > 0

def LatticeClosed (L : IntegerLattice) : Prop :=
  L.discrete ∧ L.rank > 0

theorem lattice_closed_from_evidence (L : IntegerLattice) (E : LatticeEvidence L) :
    LatticeClosed L := by
  exact And.intro E.discreteClosed E.rankFinite

end LinearDiophantineEquationsTheoremCanonicalLaneLean
end HautevilleHouse