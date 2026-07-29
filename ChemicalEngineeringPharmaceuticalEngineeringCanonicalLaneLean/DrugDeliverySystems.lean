import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean

structure DrugDeliveryPackage where
  releaseKinetics : Type u
  transportModel : Type v
  bioavailability : Prop
  targetedRelease : Prop
  biocompatibility : Prop

structure DrugDeliveryEvidence (D : DrugDeliveryPackage) where
  bioavailabilityClosed : D.bioavailability
  targetedReleaseClosed : D.targetedRelease
  biocompatibilityClosed : D.biocompatibility

def DrugDeliveryClosed (D : DrugDeliveryPackage) : Prop :=
  D.bioavailability ∧ D.targetedRelease ∧ D.biocompatibility

theorem drug_delivery_closed_from_evidence (D : DrugDeliveryPackage)
    (E : DrugDeliveryEvidence D) : DrugDeliveryClosed D := by
  exact And.intro E.bioavailabilityClosed
    (And.intro E.targetedReleaseClosed E.biocompatibilityClosed)

end ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean
end HautevilleHouse