import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean.PackingCoveringStructures

/-!
# Fractional Packing and Covering Package

This module extends packing and covering to fractional relaxations, which are
central in linear programming duality and approximation algorithms.
-/

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean

structure FractionalPackingSystem {G : PackingCoveringGroundSet}
    (P : PackingSystem G) where
  fractionalFeasible : Prop
  fractionalMaximalValue : ℚ
  integralityGap : ℚ
  fractionalFeasibleTerm : fractionalFeasible
  fractionalMaximalValueTerm : fractionalMaximalValue
  integralityGapTerm : integralityGap

structure FractionalCoveringSystem {G : PackingCoveringGroundSet}
    (C : CoveringSystem G) where
  fractionalFeasible : Prop
  fractionalMinimalValue : ℚ
  integralityGap : ℚ
  fractionalFeasibleTerm : fractionalFeasible
  fractionalMinimalValueTerm : fractionalMinimalValue
  integralityGapTerm : integralityGap

structure FractionalEvidence {G : PackingCoveringGroundSet}
    {P : PackingSystem G} {C : CoveringSystem G}
    (FP : FractionalPackingSystem P) (FC : FractionalCoveringSystem C) where
  fractionalPackingClosed : FP.fractionalFeasible
  fractionalCoveringClosed : FC.fractionalFeasible
  strongDualityFractional : Prop
  strongDualityFractionalTerm : strongDualityFractional

def FractionalPackingClosed {G : PackingCoveringGroundSet}
    {P : PackingSystem G} (FP : FractionalPackingSystem P) : Prop :=
  FP.fractionalFeasible

def FractionalCoveringClosed {G : PackingCoveringGroundSet}
    {C : CoveringSystem G} (FC : FractionalCoveringSystem C) : Prop :=
  FC.fractionalFeasible

theorem fractional_packing_closed_from_evidence
    {G : PackingCoveringGroundSet} {P : PackingSystem G}
    (FP : FractionalPackingSystem P) (E : FractionalEvidence FP _) :
    FractionalPackingClosed FP := by
  exact E.fractionalPackingClosed

theorem fractional_covering_closed_from_evidence
    {G : PackingCoveringGroundSet} {C : CoveringSystem G}
    (FC : FractionalCoveringSystem C) (E : FractionalEvidence _ FC) :
    FractionalCoveringClosed FC := by
  exact E.fractionalCoveringClosed

end CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean
end HautevilleHouse