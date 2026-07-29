import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean

structure MassTransferPackage where
  diffusivity : ℝ
  concentration : ℝ → ℝ
  flux : ℝ
  fickLaw : Prop
  boundaryCondition : Prop

structure MassTransferEvidence (M : MassTransferPackage) where
  fickLawClosed : M.fickLaw
  boundaryConditionClosed : M.boundaryCondition

def MassTransferClosed (M : MassTransferPackage) : Prop :=
  M.fickLaw ∧ M.boundaryCondition

theorem mass_transfer_closed_from_evidence (M : MassTransferPackage)
    (E : MassTransferEvidence M) : MassTransferClosed M := by
  exact And.intro E.fickLawClosed E.boundaryConditionClosed

end ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean
end HautevilleHouse