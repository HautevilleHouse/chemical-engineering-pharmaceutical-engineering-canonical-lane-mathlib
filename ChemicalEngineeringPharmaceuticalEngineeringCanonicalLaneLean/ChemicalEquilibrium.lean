import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean

structure ChemicalEquilibriumPackage where
  equilibriumConstant : Prop
  leChatelierPrinciple : Prop
  reactionQuotient : Prop
  degreeOfDissociation : Prop

structure ChemicalEquilibriumEvidence (C : ChemicalEquilibriumPackage) where
  equilibriumConstantClosed : C.equilibriumConstant
  leChatelierPrincipleClosed : C.leChatelierPrinciple
  reactionQuotientClosed : C.reactionQuotient
  degreeOfDissociationClosed : C.degreeOfDissociation

def ChemicalEquilibriumClosed (C : ChemicalEquilibriumPackage) : Prop :=
  C.equilibriumConstant ∧ C.leChatelierPrinciple ∧ C.reactionQuotient ∧ C.degreeOfDissociation

theorem chemical_equilibrium_closed_from_evidence (C : ChemicalEquilibriumPackage)
    (E : ChemicalEquilibriumEvidence C) : ChemicalEquilibriumClosed C := by
  exact And.intro E.equilibriumConstantClosed (And.intro E.leChatelierPrincipleClosed
    (And.intro E.reactionQuotientClosed E.degreeOfDissociationClosed))

end ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean
end HautevilleHouse