import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean

structure EvolutionaryGameTheoryPackage where
  payoffMatrix : Type
  replicatorDynamics : Prop
  evolutionaryStableState : Prop
  nashEquilibrium : Prop

structure EvolutionaryGameTheoryEvidence (G : EvolutionaryGameTheoryPackage) where
  replicatorDynamicsClosed : G.replicatorDynamics
  evolutionaryStableStateClosed : G.evolutionaryStableState
  nashEquilibriumClosed : G.nashEquilibrium

def EvolutionaryGameTheoryClosed (G : EvolutionaryGameTheoryPackage) : Prop :=
  G.replicatorDynamics ∧ G.evolutionaryStableState ∧ G.nashEquilibrium

theorem evolutionary_game_theory_closed_from_evidence
    (G : EvolutionaryGameTheoryPackage) (E : EvolutionaryGameTheoryEvidence G) :
    EvolutionaryGameTheoryClosed G := by
  exact And.intro E.replicatorDynamicsClosed
    (And.intro E.evolutionaryStableStateClosed E.nashEquilibriumClosed)

end EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse
