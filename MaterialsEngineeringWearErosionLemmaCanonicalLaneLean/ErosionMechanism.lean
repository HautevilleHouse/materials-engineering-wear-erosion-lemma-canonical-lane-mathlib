import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure ErosionMechanism (C : WearErosionConstants) where
  erosionRate : ℝ
  particleVelocity : ℝ
  impactAngle : ℝ
  erosionRateFormula : erosionRate = C.erosionConstant * (C.density * particleVelocity ^ 2) * Real.sin impactAngle / (2 * C.materialHardness)
  particleVelocityPositive : particleVelocity > 0
  impactAngleInRange : impactAngle > 0 ∧ impactAngle < π/2
  erosionRateNonnegative : erosionRate ≥ 0

structure ErosionMechanismEvidence {C : WearErosionConstants} (M : ErosionMechanism C) where
  erosionRateFormulaClosed : M.erosionRateFormula
  particleVelocityPositiveClosed : M.particleVelocityPositive
  impactAngleInRangeClosed : M.impactAngleInRange
  erosionRateNonnegativeClosed : M.erosionRateNonnegative

def ErosionMechanismClosed {C : WearErosionConstants} (M : ErosionMechanism C) : Prop :=
  M.erosionRateFormula ∧ M.particleVelocityPositive ∧ M.impactAngleInRange ∧ M.erosionRateNonnegative

theorem erosion_mechanism_closed_from_evidence {C : WearErosionConstants} (M : ErosionMechanism C) (E : ErosionMechanismEvidence M) :
    ErosionMechanismClosed M := by
  exact And.intro E.erosionRateFormulaClosed
    (And.intro E.particleVelocityPositiveClosed
      (And.intro E.impactAngleInRangeClosed E.erosionRateNonnegativeClosed))

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse
