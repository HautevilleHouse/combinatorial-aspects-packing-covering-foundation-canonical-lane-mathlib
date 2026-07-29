import HautevilleHouse.CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean

structure CoveringStructuralPackage where
  coveringExists : Prop
  finiteSubcoverProperty : Prop
  overlapControl : Prop
  coveringDensityBound : Prop

structure CoveringStructuralEvidence (C : CoveringStructuralPackage) where
  coveringExistsClosed : C.coveringExists
  finiteSubcoverPropertyClosed : C.finiteSubcoverProperty
  overlapControlClosed : C.overlapControl
  coveringDensityBoundClosed : C.coveringDensityBound

def CoveringStructuralClosed (C : CoveringStructuralPackage) : Prop :=
  C.coveringExists ∧ C.finiteSubcoverProperty ∧
  C.overlapControl ∧ C.coveringDensityBound

theorem covering_structural_closed_from_evidence (C : CoveringStructuralPackage)
    (E : CoveringStructuralEvidence C) : CoveringStructuralClosed C := by
  exact And.intro E.coveringExistsClosed
    (And.intro E.finiteSubcoverPropertyClosed
      (And.intro E.overlapControlClosed E.coveringDensityBoundClosed))

end CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean
end HautevilleHouse