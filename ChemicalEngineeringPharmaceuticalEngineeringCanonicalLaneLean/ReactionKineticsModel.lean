import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean

structure ReactionRateLaw where
  rateExpression : Prop
  arrheniusForm : Prop
  orderDetermination : Prop
  equilibriumConstant : Prop

structure ReactionRateLawEvidence (R : ReactionRateLaw) where
  rateExpressionClosed : R.rateExpression
  arrheniusFormClosed : R.arrheniusForm
  orderDeterminationClosed : R.orderDetermination
  equilibriumConstantClosed : R.equilibriumConstant

def ReactionRateLawClosed (R : ReactionRateLaw) : Prop :=
  R.rateExpression ∧ R.arrheniusForm ∧ R.orderDetermination ∧ R.equilibriumConstant

theorem reaction_rate_law_closed_from_evidence (R : ReactionRateLaw)
    (E : ReactionRateLawEvidence R) : ReactionRateLawClosed R := by
  exact And.intro E.rateExpressionClosed
    (And.intro E.arrheniusFormClosed
      (And.intro E.orderDeterminationClosed E.equilibriumConstantClosed))

end ChemicalEngineeringPharmaceuticalEngineeringCanonicalLaneLean
end HautevilleHouse