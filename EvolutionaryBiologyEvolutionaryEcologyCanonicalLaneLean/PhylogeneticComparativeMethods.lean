import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean

structure PhylogeneticComparativeMethodsPackage where
  phylogeneticTree : Type u
  brownianMotionModel : Prop
  phylogeneticSignal : Prop
  ancestralStateReconstruction : Prop
  phylogeneticGLM : Prop

structure PhylogeneticComparativeMethodsEvidence (P : PhylogeneticComparativeMethodsPackage) where
  brownianMotionModelClosed : P.brownianMotionModel
  phylogeneticSignalClosed : P.phylogeneticSignal
  ancestralStateReconstructionClosed : P.ancestralStateReconstruction
  phylogeneticGLMClosed : P.phylogeneticGLM

def PhylogeneticComparativeMethodsClosed (P : PhylogeneticComparativeMethodsPackage) : Prop :=
  P.brownianMotionModel ∧ P.phylogeneticSignal ∧ P.ancestralStateReconstruction ∧ P.phylogeneticGLM

theorem phylogenetic_comparative_methods_closed_from_evidence (P : PhylogeneticComparativeMethodsPackage) (E : PhylogeneticComparativeMethodsEvidence P) :
    PhylogeneticComparativeMethodsClosed P := by
  exact And.intro E.brownianMotionModelClosed (And.intro E.phylogeneticSignalClosed (And.intro E.ancestralStateReconstructionClosed E.phylogeneticGLMClosed))

end EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse