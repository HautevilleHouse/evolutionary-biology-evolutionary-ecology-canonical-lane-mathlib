import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean

structure EpidemiologySIRPackage where
  transmissionRate : ℝ
  recoveryRate : ℝ
  susceptible : ℝ → ℝ
  infected : ℝ → ℝ
  recovered : ℝ → ℝ
  basicReproductiveNumber : ℝ
  herdImmunityThreshold : Prop
  diseaseFreeEquilibriumStability : Prop

structure EpidemiologySIREvidence (E : EpidemiologySIRPackage) where
  herdImmunityThresholdClosed : E.herdImmunityThreshold
  diseaseFreeEquilibriumStabilityClosed : E.diseaseFreeEquilibriumStability

def EpidemiologySIRClosed (E : EpidemiologySIRPackage) : Prop :=
  E.herdImmunityThreshold ∧ E.diseaseFreeEquilibriumStability

theorem epidemiology_SIR_closed_from_evidence (E : EpidemiologySIRPackage) (Ev : EpidemiologySIREvidence E) :
    EpidemiologySIRClosed E := by
  exact And.intro Ev.herdImmunityThresholdClosed Ev.diseaseFreeEquilibriumStabilityClosed

end EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse