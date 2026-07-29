import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean

structure CoadaptationPackage where
  mutualisticInteractions : ℝ → ℝ
  coevolutionaryDynamics : ℝ → ℝ → ℝ
  fitnessLandscape : ℝ → ℝ
  coadaptationStability : Prop
  evolutionaryBranching : Prop
  characterDisplacement : Prop

structure CoadaptationEvidence (C : CoadaptationPackage) where
  coadaptationStabilityClosed : C.coadaptationStability
  evolutionaryBranchingClosed : C.evolutionaryBranching
  characterDisplacementClosed : C.characterDisplacement

def CoadaptationClosed (C : CoadaptationPackage) : Prop :=
  C.coadaptationStability ∧ C.evolutionaryBranching ∧ C.characterDisplacement

theorem coadaptation_closed_from_evidence (C : CoadaptationPackage) (E : CoadaptationEvidence C) :
    CoadaptationClosed C := by
  exact And.intro E.coadaptationStabilityClosed (And.intro E.evolutionaryBranchingClosed E.characterDisplacementClosed)

end EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse