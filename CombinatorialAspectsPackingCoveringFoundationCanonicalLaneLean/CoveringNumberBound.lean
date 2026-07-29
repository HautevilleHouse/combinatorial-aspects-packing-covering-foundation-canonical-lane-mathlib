import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean

structure CoveringNumberBoundPackage where
  spaceType : Type u
  metric : Type v
  radius : ℝ
  coveringNumber : ℕ
  coveringNumberBound : Prop

structure CoveringNumberBoundEvidence (C : CoveringNumberBoundPackage) where
  coveringNumberBoundClosed : C.coveringNumberBound

def CoveringNumberBoundClosed (C : CoveringNumberBoundPackage) : Prop :=
  C.coveringNumberBound

theorem covering_number_bound_closed_from_evidence
    (C : CoveringNumberBoundPackage) (E : CoveringNumberBoundEvidence C) :
    CoveringNumberBoundClosed C := by
  exact E.coveringNumberBoundClosed

end CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean
end HautevilleHouse