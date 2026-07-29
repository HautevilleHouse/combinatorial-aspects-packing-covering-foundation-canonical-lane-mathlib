import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean

structure PackingCoveringSpace where
  carrier : Type
  discreteTopology : TopologicalSpace carrier

structure PackingCoveringAdmittedObject where
  space : PackingCoveringSpace
  finitePacking : Prop
  finiteCovering : Prop
  coverModel : Type
  coverTopology : TopologicalSpace coverModel
  coveringRefinement : Prop
  conclusion : coveringRefinement

structure PackingCoveringEndgameState where
  object : PackingCoveringAdmittedObject

def PackingCoveringWitnessClosed (O : PackingCoveringAdmittedObject) : Prop :=
  O.coveringRefinement

end CombinatorialAspectsPackingCoveringFoundationCanonicalLaneLean
end HautevilleHouse