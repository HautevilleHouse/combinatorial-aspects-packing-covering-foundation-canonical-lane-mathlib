import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean

structure PackingStructure (A : AdmissibleClass) where
  groundSet : Type u
  family : Set (Set (groundSet))
  packingNumber : ℕ
  finiteIntersection : Prop
  hereditary : Prop
  packingNumberClosed : packingNumber = 1

structure PackingEvidence (A : AdmissibleClass) (P : PackingStructure A) where
  finiteIntersectionClosed : P.finiteIntersection
  hereditaryClosed : P.hereditary
  packingNumberClosed : P.packingNumberClosed

def PackingClosed (A : AdmissibleClass) (P : PackingStructure A) : Prop :=
  P.finiteIntersection ∧ P.hereditary ∧ P.packingNumberClosed

theorem packing_closed_from_evidence (A : AdmissibleClass) (P : PackingStructure A)
    (E : PackingEvidence A P) : PackingClosed A P := by
  exact And.intro E.finiteIntersectionClosed (And.intro E.hereditaryClosed E.packingNumberClosed)

end CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean
end HautevilleHouse