import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean

structure ReactionKineticsPackage where
  reactionRate : Type u
  rateConstant : Type v
  activationEnergy : Type w
  concentrationProfiles : Prop
  temperatureDependence : Prop

structure ReactionKineticsEvidence (R : ReactionKineticsPackage) where
  concentrationProfilesClosed : R.concentrationProfiles
  temperatureDependenceClosed : R.temperatureDependence

def ReactionKineticsClosed (R : ReactionKineticsPackage) : Prop :=
  R.concentrationProfiles ∧ R.temperatureDependence

theorem reaction_kinetics_closed_from_evidence (R : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence R) : ReactionKineticsClosed R := by
  exact And.intro E.concentrationProfilesClosed E.temperatureDependenceClosed

end ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean
end HautevilleHouse