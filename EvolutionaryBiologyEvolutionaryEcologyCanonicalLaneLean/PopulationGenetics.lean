import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean

structure PopulationGeneticsPackage where
  alleleFrequency : Type u
  selectionCoefficient : Type v
  mutationRate : Type w
  hardyWeinbergEquilibrium : Prop
  fixationProbability : Prop
  geneticDrift : Prop

structure PopulationGeneticsEvidence (P : PopulationGeneticsPackage) where
  hardyWeinbergEquilibriumClosed : P.hardyWeinbergEquilibrium
  fixationProbabilityClosed : P.fixationProbability
  geneticDriftClosed : P.geneticDrift

def PopulationGeneticsClosed (P : PopulationGeneticsPackage) : Prop :=
  P.hardyWeinbergEquilibrium ∧ P.fixationProbability ∧ P.geneticDrift

theorem population_genetics_closed_from_evidence
    (P : PopulationGeneticsPackage) (E : PopulationGeneticsEvidence P) :
    PopulationGeneticsClosed P := by
  exact And.intro E.hardyWeinbergEquilibriumClosed
    (And.intro E.fixationProbabilityClosed E.geneticDriftClosed)

end EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse