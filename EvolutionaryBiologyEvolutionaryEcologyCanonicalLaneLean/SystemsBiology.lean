import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean

structure SystemsBiologyPackage where
  geneRegulatoryNetwork : Type u
  metabolicFlux : Type v
  signalTransductionPathway : Type w
  networkTopology : Prop
  fluxBalanceAnalysis : Prop
  feedbackLoops : Prop

structure SystemsBiologyEvidence (S : SystemsBiologyPackage) where
  networkTopologyClosed : S.networkTopology
  fluxBalanceAnalysisClosed : S.fluxBalanceAnalysis
  feedbackLoopsClosed : S.feedbackLoops

def SystemsBiologyClosed (S : SystemsBiologyPackage) : Prop :=
  S.networkTopology ∧ S.fluxBalanceAnalysis ∧ S.feedbackLoops

theorem systems_biology_closed_from_evidence
    (S : SystemsBiologyPackage) (E : SystemsBiologyEvidence S) :
    SystemsBiologyClosed S := by
  exact And.intro E.networkTopologyClosed
    (And.intro E.fluxBalanceAnalysisClosed E.feedbackLoopsClosed)

end EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse