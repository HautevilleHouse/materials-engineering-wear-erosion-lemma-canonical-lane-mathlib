import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure WearErosionConstants where
  wearConstant : ℝ
  erosionConstant : ℝ
  slidingVelocity : ℝ
  normalLoad : ℝ
  materialHardness : ℝ
  density : ℝ

structure WearErosionConstantsEvidence (C : WearErosionConstants) where
  wearConstantPositive : C.wearConstant > 0
  erosionConstantPositive : C.erosionConstant > 0
  slidingVelocityPositive : C.slidingVelocity > 0
  normalLoadPositive : C.normalLoad > 0
  materialHardnessPositive : C.materialHardness > 0
  densityPositive : C.density > 0

def WearErosionConstantsClosed (C : WearErosionConstants) : Prop :=
  C.wearConstant > 0 ∧ C.erosionConstant > 0 ∧ C.slidingVelocity > 0 ∧
  C.normalLoad > 0 ∧ C.materialHardness > 0 ∧ C.density > 0

theorem wear_erosion_constants_closed_from_evidence (C : WearErosionConstants) (E : WearErosionConstantsEvidence C) :
    WearErosionConstantsClosed C := by
  exact And.intro E.wearConstantPositive
    (And.intro E.erosionConstantPositive
      (And.intro E.slidingVelocityPositive
        (And.intro E.normalLoadPositive
          (And.intro E.materialHardnessPositive E.densityPositive))))

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse
