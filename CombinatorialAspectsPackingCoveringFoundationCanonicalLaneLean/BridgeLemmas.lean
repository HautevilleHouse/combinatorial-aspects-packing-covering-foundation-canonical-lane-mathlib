import HautevilleHouse.CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean.PackingCoveringAdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  PackingCoveringWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean
end HautevilleHouse