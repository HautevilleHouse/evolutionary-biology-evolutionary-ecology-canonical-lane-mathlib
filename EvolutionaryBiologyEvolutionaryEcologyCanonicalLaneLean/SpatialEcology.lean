import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean

structure SpatialEcologyPackage where
  habitatPatches : Type
  dispersalRates : habitatPatches → habitatPatches → ℝ
  metapopulationDynamics : Prop
  sourceSinkDynamics : Prop
  extinctionColonizationEquilibrium : Prop

structure SpatialEcologyEvidence (S : SpatialEcologyPackage) where
  metapopulationDynamicsClosed : S.metapopulationDynamics
  sourceSinkDynamicsClosed : S.sourceSinkDynamics
  extinctionColonizationEquilibriumClosed : S.extinctionColonizationEquilibrium

def SpatialEcologyClosed (S : SpatialEcologyPackage) : Prop :=
  S.metapopulationDynamics ∧ S.sourceSinkDynamics ∧ S.extinctionColonizationEquilibrium

theorem spatial_ecology_closed_from_evidence (S : SpatialEcologyPackage)
    (E : SpatialEcologyEvidence S) : SpatialEcologyClosed S := by
  exact And.intro E.metapopulationDynamicsClosed
    (And.intro E.sourceSinkDynamicsClosed E.extinctionColonizationEquilibriumClosed)

end EvolutionaryBiologyEvolutionaryEcologyCanonicalLaneLean
end HautevilleHouse