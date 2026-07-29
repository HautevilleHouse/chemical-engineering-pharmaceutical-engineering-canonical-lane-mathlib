import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean

structure ChemicalEquilibriumSystem where
  equilibriumConstantLaw : Prop
  reactionQuotient : Prop
  leChatelierPrinciple : Prop
  standardGibbsRelation : Prop

structure ChemicalEquilibriumSystemEvidence (C : ChemicalEquilibriumSystem) where
  equilibriumConstantLawClosed : C.equilibriumConstantLaw
  reactionQuotientClosed : C.reactionQuotient
  leChatelierPrincipleClosed : C.leChatelierPrinciple
  standardGibbsRelationClosed : C.standardGibbsRelation

def ChemicalEquilibriumSystemClosed (C : ChemicalEquilibriumSystem) : Prop :=
  C.equilibriumConstantLaw ∧ C.reactionQuotient ∧ C.leChatelierPrinciple ∧ C.standardGibbsRelation

theorem chemical_equilibrium_system_closed_from_evidence (C : ChemicalEquilibriumSystem)
    (E : ChemicalEquilibriumSystemEvidence C) : ChemicalEquilibriumSystemClosed C := by
  exact And.intro E.equilibriumConstantLawClosed
    (And.intro E.reactionQuotientClosed
      (And.intro E.leChatelierPrincipleClosed E.standardGibbsRelationClosed))

end ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean
end HautevilleHouse