import canonicalLaneMathlib.AdmissibleClass
import EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean.PopulationDynamics
import EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean.EvolutionaryGameTheory
import EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean.EpidemiologyModels

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean

def ConstrainedEvolutionaryBiologyClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_evolutionary_biology_endgame (A : AdmissibleClass) :
    ConstrainedEvolutionaryBiologyClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse
