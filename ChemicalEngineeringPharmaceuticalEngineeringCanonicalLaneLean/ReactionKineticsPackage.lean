import ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean.ChemicalEngineeringObjects

namespace HautevilleHouse
namespace ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean

structure ReactionKineticsPackage where
  rateLaw : Prop
  activationEnergy : Prop
  temperatureDependence : Prop
  rateLawClosed : rateLaw
  activationEnergyClosed : activationEnergy
  temperatureDependenceClosed : temperatureDependence

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.rateLaw ∧ R.activationEnergy ∧ R.temperatureDependence

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage) :
    ReactionKineticsClosed R := by
  exact And.intro R.rateLawClosed (And.intro R.activationEnergyClosed R.temperatureDependenceClosed)

end ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean
end HautevilleHouse