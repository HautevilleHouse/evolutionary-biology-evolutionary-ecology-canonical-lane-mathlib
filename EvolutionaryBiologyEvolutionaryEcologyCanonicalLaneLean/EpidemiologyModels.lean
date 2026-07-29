import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean

structure EpidemiologyModelsPackage where
  susceptible : Prop
  infected : Prop
  recovered : Prop
  basicReproductiveNumber : Prop
  herdImmunity : Prop

structure EpidemiologyModelsEvidence (E : EpidemiologyModelsPackage) where
  susceptibleClosed : E.susceptible
  infectedClosed : E.infected
  recoveredClosed : E.recovered
  basicReproductiveNumberClosed : E.basicReproductiveNumber
  herdImmunityClosed : E.herdImmunity

def EpidemiologyModelsClosed (E : EpidemiologyModelsPackage) : Prop :=
  E.susceptible ∧ E.infected ∧ E.recovered ∧ E.basicReproductiveNumber ∧ E.herdImmunity

theorem epidemiology_models_closed_from_evidence
    (E : EpidemiologyModelsPackage) (Ev : EpidemiologyModelsEvidence E) :
    EpidemiologyModelsClosed E := by
  exact And.intro Ev.susceptibleClosed
    (And.intro Ev.infectedClosed
      (And.intro Ev.recoveredClosed
        (And.intro Ev.basicReproductiveNumberClosed Ev.herdImmunityClosed)))

end EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse
