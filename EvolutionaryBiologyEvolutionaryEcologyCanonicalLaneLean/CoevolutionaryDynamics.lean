import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean

structure CoevolutionaryPackage where
  interactingSpecies : Type
  traitValues : interactingSpecies → Set ℝ
  fitnessGradients : interactingSpecies → ℝ → ℝ
  quantitativeGeneticsDynamics : Prop
  coevolutionaryEquilibrium : Prop
  characterDisplacement : Prop

structure CoevolutionaryEvidence (C : CoevolutionaryPackage) where
  quantitativeGeneticsDynamicsClosed : C.quantitativeGeneticsDynamics
  coevolutionaryEquilibriumClosed : C.coevolutionaryEquilibrium
  characterDisplacementClosed : C.characterDisplacement

def CoevolutionaryClosed (C : CoevolutionaryPackage) : Prop :=
  C.quantitativeGeneticsDynamics ∧ C.coevolutionaryEquilibrium ∧ C.characterDisplacement

theorem coevolutionary_closed_from_evidence (C : CoevolutionaryPackage)
    (E : CoevolutionaryEvidence C) : CoevolutionaryClosed C := by
  exact And.intro E.quantitativeGeneticsDynamicsClosed
    (And.intro E.coevolutionaryEquilibriumClosed E.characterDisplacementClosed)

end EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse