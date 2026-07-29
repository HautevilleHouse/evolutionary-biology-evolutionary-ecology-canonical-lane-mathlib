import HautevilleHouse.EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean.TheoremStatement

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  EvolutionaryWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse
