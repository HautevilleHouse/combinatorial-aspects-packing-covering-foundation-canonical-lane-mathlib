import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean

structure FoundationEvidence where
  finitePackingClosed : Prop
  finiteCoveringClosed : Prop
  coveringRefinementClosed : Prop

def FoundationClosed (E : FoundationEvidence) : Prop :=
  E.finitePackingClosed ∧ E.finiteCoveringClosed ∧ E.coveringRefinementClosed

theorem foundation_closed_from_evidence (E : FoundationEvidence) :
    FoundationClosed E := by
  exact And.intro E.finitePackingClosed
    (And.intro E.finiteCoveringClosed E.coveringRefinementClosed)

end CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean
end HautevilleHouse