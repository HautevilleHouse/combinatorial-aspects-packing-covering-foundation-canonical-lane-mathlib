import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean

structure LovaszThetaFunctionSystem where
  graph : Type u
  adjacency : graph → graph → Prop
  thetaFunctionValue : ℝ
  sandwichTheoremInequality : Prop

structure LovaszThetaFunctionEvidence (L : LovaszThetaFunctionSystem) where
  thetaFunctionValueDefined : Prop
  sandwichTheoremInequalityClosed : L.sandwichTheoremInequality
  thetaFunctionValueDefinedTerm : thetaFunctionValueDefined

def LovaszThetaFunctionClosed (L : LovaszThetaFunctionSystem) : Prop :=
  L.thetaFunctionValue > 0 ∧ L.sandwichTheoremInequality

theorem lovasz_theta_function_closed_from_evidence
    (L : LovaszThetaFunctionSystem) (E : LovaszThetaFunctionEvidence L) :
    LovaszThetaFunctionClosed L := by
  exact And.intro (by
    have hpos : L.thetaFunctionValue > 0 := E.thetaFunctionValueDefinedTerm
    exact hpos) E.sandwichTheoremInequalityClosed

end CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean
end HautevilleHouse