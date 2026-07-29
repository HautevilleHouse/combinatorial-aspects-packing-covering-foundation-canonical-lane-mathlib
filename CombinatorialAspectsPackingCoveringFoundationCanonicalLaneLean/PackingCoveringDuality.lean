import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean.PackingStructure
import HautevilleHouse.CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean.CoveringStructure

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean

structure PackingCoveringDualityPackage {P : PackingStructure} {C : CoveringStructure} where
  dualFamily : Type u
  dualCollection : Type v
  dualityPairing : Prop
  packingFromCovering : Prop
  coveringFromPacking : Prop

structure PackingCoveringDualityEvidence {P : PackingStructure} {C : CoveringStructure}
    (D : PackingCoveringDualityPackage P C) where
  dualityPairingClosed : D.dualityPairing
  packingFromCoveringClosed : D.packingFromCovering
  coveringFromPackingClosed : D.coveringFromPacking

def PackingCoveringDualityClosed {P : PackingStructure} {C : CoveringStructure}
    (D : PackingCoveringDualityPackage P C) : Prop :=
  D.dualityPairing ∧ D.packingFromCovering ∧ D.coveringFromPacking

theorem packing_covering_duality_closed_from_evidence
    {P : PackingStructure} {C : CoveringStructure}
    (D : PackingCoveringDualityPackage P C) (E : PackingCoveringDualityEvidence D) :
    PackingCoveringDualityClosed D := by
  exact And.intro E.dualityPairingClosed
    (And.intro E.packingFromCoveringClosed E.coveringFromPackingClosed)

end CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean
end HautevilleHouse