import HautevilleHouse.EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean.ReviewerBridge

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean

structure EvolutionarySpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure EvolutionaryAdmittedObject where
  space : EvolutionarySpace
  ecosystemEquilibrium : Prop
  fitnessLandscape : Prop
  stateModel : Type
  stateTopology : TopologicalSpace stateModel
  evolutionaryStableState : Prop
  conclusion : evolutionaryStableState

def EvolutionaryWitnessClosed (O : EvolutionaryAdmittedObject) : Prop :=
  O.evolutionaryStableState

end EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse
