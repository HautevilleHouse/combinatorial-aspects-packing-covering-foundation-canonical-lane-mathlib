import HautevilleHouse.CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean

structure PackingStructuralPackage where
  pairwiseDisjointness : Prop
  translationalInvariance : Prop
  maximalPackingExists : Prop
  packingDensityBound : Prop

structure PackingStructuralEvidence (P : PackingStructuralPackage) where
  pairwiseDisjointnessClosed : P.pairwiseDisjointness
  translationalInvarianceClosed : P.translationalInvariance
  maximalPackingExistsClosed : P.maximalPackingExists
  packingDensityBoundClosed : P.packingDensityBound

def PackingStructuralClosed (P : PackingStructuralPackage) : Prop :=
  P.pairwiseDisjointness ∧ P.translationalInvariance ∧
  P.maximalPackingExists ∧ P.packingDensityBound

theorem packing_structural_closed_from_evidence (P : PackingStructuralPackage)
    (E : PackingStructuralEvidence P) : PackingStructuralClosed P := by
  exact And.intro E.pairwiseDisjointnessClosed
    (And.intro E.translationalInvarianceClosed
      (And.intro E.maximalPackingExistsClosed E.packingDensityBoundClosed))

end CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean
end HautevilleHouse