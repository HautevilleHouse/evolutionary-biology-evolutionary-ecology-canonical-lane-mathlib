import HautevilleHouse.EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean

structure AdmissibleClass where
  object : EvolutionaryAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  EvolutionaryWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse
