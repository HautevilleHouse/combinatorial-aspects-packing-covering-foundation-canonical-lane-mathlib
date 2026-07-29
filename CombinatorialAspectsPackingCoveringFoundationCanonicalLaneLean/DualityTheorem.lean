import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean.PackingStructure
import HautevilleHouse.CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean.CoveringNumber

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean

structure DualityStructure (A : AdmissibleClass) where
  packing : PackingStructure A
  covering : CoveringStructure A
  duality : Prop
  equality : Prop
  dualityClosed : duality
  equalityClosed : equality

structure DualityEvidence (A : AdmissibleClass) (D : DualityStructure A) where
  packingClosed : PackingClosed A D.packing
  coveringClosed : CoveringClosed A D.covering
  dualityClosed : D.dualityClosed
  equalityClosed : D.equalityClosed

def DualityClosed (A : AdmissibleClass) (D : DualityStructure A) : Prop :=
  PackingClosed A D.packing ∧ CoveringClosed A D.covering ∧ D.duality ∧ D.equality

theorem duality_closed_from_evidence (A : AdmissibleClass) (D : DualityStructure A)
    (E : DualityEvidence A D) : DualityClosed A D := by
  exact And.intro E.packingClosed (And.intro E.coveringClosed (And.intro E.dualityClosed E.equalityClosed))

end CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean
end HautevilleHouse