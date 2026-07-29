import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean

structure CoveringStructure (A : AdmissibleClass) where
  groundSet : Type u
  family : Set (Set (groundSet))
  coveringNumber : ℕ
  finiteUnion : Prop
  pointInUnion : Prop
  coveringNumberClosed : coveringNumber = 1

structure CoveringEvidence (A : AdmissibleClass) (C : CoveringStructure A) where
  finiteUnionClosed : C.finiteUnion
  pointInUnionClosed : C.pointInUnion
  coveringNumberClosed : C.coveringNumberClosed

def CoveringClosed (A : AdmissibleClass) (C : CoveringStructure A) : Prop :=
  C.finiteUnion ∧ C.pointInUnion ∧ C.coveringNumberClosed

theorem covering_closed_from_evidence (A : AdmissibleClass) (C : CoveringStructure A)
    (E : CoveringEvidence A C) : CoveringClosed A C := by
  exact And.intro E.finiteUnionClosed (And.intro E.pointInUnionClosed E.coveringNumberClosed)

end CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean
end HautevilleHouse