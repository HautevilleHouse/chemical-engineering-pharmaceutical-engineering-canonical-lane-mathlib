import canonicalLaneMathlib.AdmissibleClass
import ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean.BridgeLemmas
import ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean

def ConstrainedChemicalEngineeringClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_chemical_engineering_endgame (A : AdmissibleClass) :
    ConstrainedChemicalEngineeringClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean
end HautevilleHouse