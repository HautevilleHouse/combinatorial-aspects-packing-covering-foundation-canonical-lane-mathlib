import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean

structure PackingCoveringLattice where
  groundSet : Type u
  packingFamily : Set (Set (groundSet))
  coveringFamily : Set (Set (groundSet))
  packingClosedUnderSubset : Prop
  coveringClosedUnderSuperset : Prop
  packingCoveringDuality : Prop

structure PackingCoveringLatticeEvidence (L : PackingCoveringLattice) where
  packingClosedUnderSubsetClosed : L.packingClosedUnderSubset
  coveringClosedUnderSupersetClosed : L.coveringClosedUnderSuperset
  packingCoveringDualityClosed : L.packingCoveringDuality

def PackingCoveringLatticeClosed (L : PackingCoveringLattice) : Prop :=
  L.packingClosedUnderSubset ∧ L.coveringClosedUnderSuperset ∧ L.packingCoveringDuality

theorem packing_covering_lattice_closed_from_evidence
    (L : PackingCoveringLattice) (E : PackingCoveringLatticeEvidence L) :
    PackingCoveringLatticeClosed L := by
  exact And.intro E.packingClosedUnderSubsetClosed
    (And.intro E.coveringClosedUnderSupersetClosed E.packingCoveringDualityClosed)

end CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean
end HautevilleHouse