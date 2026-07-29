import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean

structure ThermodynamicEquilibriumPackage where
  gibbsFreeEnergy : Type u
  equilibriumConstant : Type v
  phaseEquilibria : Prop
  reactionSpontaneity : Prop
  temperaturePressureDependence : Prop

structure ThermodynamicEquilibriumEvidence (T : ThermodynamicEquilibriumPackage) where
  phaseEquilibriaClosed : T.phaseEquilibria
  reactionSpontaneityClosed : T.reactionSpontaneity
  temperaturePressureDependenceClosed : T.temperaturePressureDependence

def ThermodynamicEquilibriumClosed (T : ThermodynamicEquilibriumPackage) : Prop :=
  T.phaseEquilibria ∧ T.reactionSpontaneity ∧ T.temperaturePressureDependence

theorem thermodynamic_equilibrium_closed_from_evidence
    (T : ThermodynamicEquilibriumPackage) (E : ThermodynamicEquilibriumEvidence T) :
    ThermodynamicEquilibriumClosed T := by
  exact And.intro E.phaseEquilibriaClosed
    (And.intro E.reactionSpontaneityClosed E.temperaturePressureDependenceClosed)

end ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean
end HautevilleHouse