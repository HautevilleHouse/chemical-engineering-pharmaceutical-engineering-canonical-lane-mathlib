import ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean.ReactionKineticsPackage

namespace HautevilleHouse
namespace ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean

structure ThermodynamicsPackage {R : ReactionKineticsPackage} where
  firstLawClosed : Prop
  secondLawClosed : Prop
  gibbsFreeEnergyClosed : Prop
  firstLawClosedTerm : firstLawClosed
  secondLawClosedTerm : secondLawClosed
  gibbsFreeEnergyClosedTerm : gibbsFreeEnergyClosed

def ThermodynamicsClosed {R : ReactionKineticsPackage} (T : ThermodynamicsPackage R) : Prop :=
  T.firstLawClosed ∧ T.secondLawClosed ∧ T.gibbsFreeEnergyClosed

theorem thermodynamics_closed_from_evidence {R : ReactionKineticsPackage}
    (T : ThermodynamicsPackage R) : ThermodynamicsClosed T := by
  exact And.intro T.firstLawClosedTerm (And.intro T.secondLawClosedTerm T.gibbsFreeEnergyClosedTerm)

end ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean
end HautevilleHouse