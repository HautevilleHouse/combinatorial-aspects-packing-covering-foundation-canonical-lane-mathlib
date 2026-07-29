import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean.PackingStructure
import HautevilleHouse.CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean.CoveringStructure

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean

structure LatticePackingCoveringPackage {P : PackingStructure} {C : CoveringStructure} where
  lattice : Type u
  latticeAction : lattice → P.family → C.cover
  latticeCovolume : Prop
  tilingCondition : Prop
  coveringDensity : Prop

structure LatticePackingCoveringEvidence {P : PackingStructure} {C : CoveringStructure}
    (L : LatticePackingCoveringPackage P C) where
  latticeCovolumeClosed : L.latticeCovolume
  tilingConditionClosed : L.tilingCondition
  coveringDensityClosed : L.coveringDensity

def LatticePackingCoveringClosed {P : PackingStructure} {C : CoveringStructure}
    (L : LatticePackingCoveringPackage P C) : Prop :=
  L.latticeCovolume ∧ L.tilingCondition ∧ L.coveringDensity

theorem lattice_packing_covering_closed_from_evidence
    {P : PackingStructure} {C : CoveringStructure}
    (L : LatticePackingCoveringPackage P C) (E : LatticePackingCoveringEvidence L) :
    LatticePackingCoveringClosed L := by
  exact And.intro E.latticeCovolumeClosed (And.intro E.tilingConditionClosed E.coveringDensityClosed)

end CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean
end HautevilleHouse