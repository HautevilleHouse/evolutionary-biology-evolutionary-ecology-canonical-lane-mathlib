import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean

structure AdaptiveDynamicsPackage where
  traitSpace : Type u
  mutationSelectionEquation : Prop
  evolutionaryBranchingCondition : Prop
  evolutionarySingularity : Prop
  dimorphicEquilibrium : Prop

structure AdaptiveDynamicsEvidence (A : AdaptiveDynamicsPackage) where
  mutationSelectionEquationClosed : A.mutationSelectionEquation
  evolutionaryBranchingConditionClosed : A.evolutionaryBranchingCondition
  evolutionarySingularityClosed : A.evolutionarySingularity
  dimorphicEquilibriumClosed : A.dimorphicEquilibrium

def AdaptiveDynamicsClosed (A : AdaptiveDynamicsPackage) : Prop :=
  A.mutationSelectionEquation ∧ A.evolutionaryBranchingCondition ∧ A.evolutionarySingularity ∧ A.dimorphicEquilibrium

theorem adaptive_dynamics_closed_from_evidence (A : AdaptiveDynamicsPackage) (E : AdaptiveDynamicsEvidence A) :
    AdaptiveDynamicsClosed A := by
  exact And.intro E.mutationSelectionEquationClosed (And.intro E.evolutionaryBranchingConditionClosed (And.intro E.evolutionarySingularityClosed E.dimorphicEquilibriumClosed))

end EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse