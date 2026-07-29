import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean

structure SpherePackingDensityPackage where
  dimension : ℕ
  packingRadius : ℝ
  densityUpperBound : ℝ
  bestPackingKnown : Prop

structure SpherePackingDensityEvidence (S : SpherePackingDensityPackage) where
  densityUpperBoundClosed : S.densityUpperBound = 1.0
  bestPackingKnownClosed : S.bestPackingKnown

def SpherePackingDensityClosed (S : SpherePackingDensityPackage) : Prop :=
  S.densityUpperBound = 1.0 ∧ S.bestPackingKnown

theorem sphere_packing_density_closed_from_evidence
    (S : SpherePackingDensityPackage) (E : SpherePackingDensityEvidence S) :
    SpherePackingDensityClosed S := by
  exact And.intro E.densityUpperBoundClosed E.bestPackingKnownClosed

end CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean
end HautevilleHouse