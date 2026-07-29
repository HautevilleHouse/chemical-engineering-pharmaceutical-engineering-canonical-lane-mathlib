import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean

structure ReactionKineticsPackage where
  rateConstant : ℝ
  activationEnergy : ℝ
  temperature : ℝ
  reactionOrder : ℕ
  rateExpression : Prop
  temperatureDependence : Prop

structure ReactionKineticsEvidence (K : ReactionKineticsPackage) where
  rateExpressionClosed : K.rateExpression
  temperatureDependenceClosed : K.temperatureDependence

def ReactionKineticsClosed (K : ReactionKineticsPackage) : Prop :=
  K.rateExpression ∧ K.temperatureDependence

theorem reaction_kinetics_closed_from_evidence (K : ReactionKineticsPackage)
    (E : ReactionKineticsEvidence K) : ReactionKineticsClosed K := by
  exact And.intro E.rateExpressionClosed E.temperatureDependenceClosed

end ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean
end HautevilleHouse