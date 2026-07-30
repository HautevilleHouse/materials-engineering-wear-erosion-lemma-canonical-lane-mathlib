import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure ArchardWearModel (C : WearErosionConstants) where
  wearVolume : ℝ
  slidingDistance : ℝ
  wearCoefficient : ℝ
  wearVolumeFormula : wearVolume = C.wearConstant * (C.normalLoad * slidingDistance) / C.materialHardness
  wearCoefficientDefined : wearCoefficient = C.wearConstant
  slidingDistancePositive : slidingDistance > 0
  wearVolumeNonnegative : wearVolume ≥ 0

structure ArchardWearModelEvidence {C : WearErosionConstants} (M : ArchardWearModel C) where
  wearVolumeFormulaClosed : M.wearVolumeFormula
  wearCoefficientDefinedClosed : M.wearCoefficientDefined
  slidingDistancePositiveClosed : M.slidingDistancePositive
  wearVolumeNonnegativeClosed : M.wearVolumeNonnegative

def ArchardWearModelClosed {C : WearErosionConstants} (M : ArchardWearModel C) : Prop :=
  M.wearVolumeFormula ∧ M.wearCoefficientDefined ∧ M.slidingDistancePositive ∧ M.wearVolumeNonnegative

theorem archard_wear_model_closed_from_evidence {C : WearErosionConstants} (M : ArchardWearModel C) (E : ArchardWearModelEvidence M) :
    ArchardWearModelClosed M := by
  exact And.intro E.wearVolumeFormulaClosed
    (And.intro E.wearCoefficientDefinedClosed
      (And.intro E.slidingDistancePositiveClosed E.wearVolumeNonnegativeClosed))

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse
