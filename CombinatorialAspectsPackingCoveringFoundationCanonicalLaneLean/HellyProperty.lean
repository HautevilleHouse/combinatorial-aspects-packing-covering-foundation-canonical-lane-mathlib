import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean

structure HellyStructure (A : AdmissibleClass) where
  groundSet : Type u
  family : Set (Set (groundSet))
  hellyNumber : ℕ
  pairwiseNonemptyIntersection : Prop
  allIntersectNonempty : Prop
  hellyNumberClosed : hellyNumber = 2

structure HellyEvidence (A : AdmissibleClass) (H : HellyStructure A) where
  pairwiseNonemptyIntersectionClosed : H.pairwiseNonemptyIntersection
  allIntersectNonemptyClosed : H.allIntersectNonempty
  hellyNumberClosed : H.hellyNumberClosed

def HellyClosed (A : AdmissibleClass) (H : HellyStructure A) : Prop :=
  H.pairwiseNonemptyIntersection ∧ H.allIntersectNonempty ∧ H.hellyNumberClosed

theorem helly_closed_from_evidence (A : AdmissibleClass) (H : HellyStructure A)
    (E : HellyEvidence A H) : HellyClosed A H := by
  exact And.intro E.pairwiseNonemptyIntersectionClosed (And.intro E.allIntersectNonemptyClosed E.hellyNumberClosed)

end CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean
end HautevilleHouse