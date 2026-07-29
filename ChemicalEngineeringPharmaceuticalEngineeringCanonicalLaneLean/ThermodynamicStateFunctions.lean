import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean

structure ThermodynamicStateVariables where
  internalEnergy : Prop
  enthalpyDefined : Prop
  gibbsFreeEnergy : Prop
  entropyFormulation : Prop
  helmholtzFreeEnergy : Prop

structure ThermodynamicStateVariablesEvidence (T : ThermodynamicStateVariables) where
  internalEnergyClosed : T.internalEnergy
  enthalpyDefinedClosed : T.enthalpyDefined
  gibbsFreeEnergyClosed : T.gibbsFreeEnergy
  entropyFormulationClosed : T.entropyFormulation
  helmholtzFreeEnergyClosed : T.helmholtzFreeEnergy

def ThermodynamicStateVariablesClosed (T : ThermodynamicStateVariables) : Prop :=
  T.internalEnergy ∧ T.enthalpyDefined ∧ T.gibbsFreeEnergy ∧ T.entropyFormulation ∧ T.helmholtzFreeEnergy

theorem thermodynamic_state_variables_closed_from_evidence (T : ThermodynamicStateVariables)
    (E : ThermodynamicStateVariablesEvidence T) : ThermodynamicStateVariablesClosed T := by
  exact And.intro E.internalEnergyClosed
    (And.intro E.enthalpyDefinedClosed
      (And.intro E.gibbsFreeEnergyClosed
        (And.intro E.entropyFormulationClosed E.helmholtzFreeEnergyClosed)))

end ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean
end HautevilleHouse