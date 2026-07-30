import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure WearErosionParameters where
  particleVelocity : Float
  particleSize : Float
  impactAngle : Float
  materialHardness : Float
  erosionRate : Float

def WearErosionLemmaClosed (W : WearErosionParameters) : Prop :=
  W.particleVelocity > 0 ∧ W.particleSize > 0 ∧
  W.impactAngle > 0 ∧ W.impactAngle < 90 ∧
  W.materialHardness > 0 ∧ W.erosionRate > 0

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse