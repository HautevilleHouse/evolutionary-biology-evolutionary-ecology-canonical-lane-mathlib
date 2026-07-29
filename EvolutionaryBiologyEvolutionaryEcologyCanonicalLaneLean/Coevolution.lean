import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean

structure CoevolutionPackage where
  interactingSpecies : Type u
  lotkaVolterraEquations : Prop
  mutualismModel : Prop
  coevolutionaryStability : Prop
  geographicMosaic : Prop

structure CoevolutionEvidence (C : CoevolutionPackage) where
  lotkaVolterraEquationsClosed : C.lotkaVolterraEquations
  mutualismModelClosed : C.mutualismModel
  coevolutionaryStabilityClosed : C.coevolutionaryStability
  geographicMosaicClosed : C.geographicMosaic

def CoevolutionClosed (C : CoevolutionPackage) : Prop :=
  C.lotkaVolterraEquations ∧ C.mutualismModel ∧ C.coevolutionaryStability ∧ C.geographicMosaic

theorem coevolution_closed_from_evidence (C : CoevolutionPackage) (E : CoevolutionEvidence C) :
    CoevolutionClosed C := by
  exact And.intro E.lotkaVolterraEquationsClosed (And.intro E.mutualismModelClosed (And.intro E.coevolutionaryStabilityClosed E.geographicMosaicClosed))

end EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse