import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean

structure PhylogeneticsPackage where
  phylogeneticTree : Tree
  substitutionModel : ℕ → ℕ → ℝ
  branchLengths : List ℝ
  molecularClock : Prop
  treeReconstructionConsistency : Prop
  likelihoodRatioTest : Prop

structure PhylogeneticsEvidence (P : PhylogeneticsPackage) where
  molecularClockClosed : P.molecularClock
  treeReconstructionConsistencyClosed : P.treeReconstructionConsistency
  likelihoodRatioTestClosed : P.likelihoodRatioTest

def PhylogeneticsClosed (P : PhylogeneticsPackage) : Prop :=
  P.molecularClock ∧ P.treeReconstructionConsistency ∧ P.likelihoodRatioTest

theorem phylogenetics_closed_from_evidence (P : PhylogeneticsPackage) (E : PhylogeneticsEvidence P) :
    PhylogeneticsClosed P := by
  exact And.intro E.molecularClockClosed (And.intro E.treeReconstructionConsistencyClosed E.likelihoodRatioTestClosed)

end EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse