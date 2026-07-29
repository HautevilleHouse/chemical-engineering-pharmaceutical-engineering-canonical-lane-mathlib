import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean

structure ChemicalEngineeringSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure ChemicalEngineeringAdmittedObject where
  space : ChemicalEngineeringSpace
  reactionKineticsModel : Prop
  thermodynamicConsistency : Prop
  equilibriumCondition : Prop
  molecularOrbitalsModel : Type
  orbitalTopology : TopologicalSpace molecularOrbitalsModel
  symbolicEquilibrium : Prop
  conclusion : symbolicEquilibrium

structure ChemicalEngineeringEndgameState where
  object : ChemicalEngineeringAdmittedObject

def ChemicalEngineeringWitnessClosed (O : ChemicalEngineeringAdmittedObject) : Prop :=
  O.symbolicEquilibrium

end ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean
end HautevilleHouse