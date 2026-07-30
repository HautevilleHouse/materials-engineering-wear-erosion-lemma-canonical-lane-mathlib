import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure FractureCriterion where
  criticalStressIntensity : Float
  appliedStressIntensity : Float
  crackLength : Float
  geometryFactor : Float

def FractureCriterionClosed (F : FractureCriterion) : Prop :=
  F.criticalStressIntensity > 0 ∧ F.appliedStressIntensity > 0 ∧
  F.crackLength > 0 ∧ F.geometryFactor > 0

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse