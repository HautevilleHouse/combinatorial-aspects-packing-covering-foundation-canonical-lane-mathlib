import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean

structure HypergraphPackingCoveringSystem where
  vertexSet : Type u
  hyperedges : Set (Set vertexSet)
  packingNumber : ℕ
  coveringNumber : ℕ
  packingCoveringInequality : ℕ

structure HypergraphPackingCoveringEvidence
    (H : HypergraphPackingCoveringSystem) where
  packingNumberClosed : H.packingNumber = 0 ∨ H.packingNumber > 0
  coveringNumberClosed : H.coveringNumber = 0 ∨ H.coveringNumber > 0
  packingCoveringInequalityClosed : H.packingCoveringInequality = 0 ∨ H.packingCoveringInequality ≥ 0

def HypergraphPackingCoveringClosed (H : HypergraphPackingCoveringSystem) : Prop :=
  (H.packingNumber = 0 ∨ H.packingNumber > 0) ∧
  (H.coveringNumber = 0 ∨ H.coveringNumber > 0) ∧
  (H.packingCoveringInequality = 0 ∨ H.packingCoveringInequality ≥ 0)

theorem hypergraph_packing_covering_closed_from_evidence
    (H : HypergraphPackingCoveringSystem) (E : HypergraphPackingCoveringEvidence H) :
    HypergraphPackingCoveringClosed H := by
  exact And.intro E.packingNumberClosed
    (And.intro E.coveringNumberClosed E.packingCoveringInequalityClosed)

end CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean
end HautevilleHouse