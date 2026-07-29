import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean

structure PharmacokineticsPackage where
  absorptionRate : ℝ
  eliminationRate : ℝ
  volumeDistribution : ℝ
  compartmentModel : Prop
  drugConcentration : ℝ → ℝ
  bioavailability : Prop

structure PharmacokineticsEvidence (P : PharmacokineticsPackage) where
  compartmentModelClosed : P.compartmentModel
  bioavailabilityClosed : P.bioavailability

def PharmacokineticsClosed (P : PharmacokineticsPackage) : Prop :=
  P.compartmentModel ∧ P.bioavailability

theorem pharmacokinetics_closed_from_evidence (P : PharmacokineticsPackage)
    (E : PharmacokineticsEvidence P) : PharmacokineticsClosed P := by
  exact And.intro E.compartmentModelClosed E.bioavailabilityClosed

end ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean
end HautevilleHouse