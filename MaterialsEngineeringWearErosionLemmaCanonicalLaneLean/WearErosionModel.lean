import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure WearErosionContactPackage where
  contactPressure : Prop
  surfaceHardness : Prop
  abrasiveHardness : Prop
  slidingVelocity : Prop
  wearCoefficient : Prop
  erosionRate : Prop

structure WearErosionContactEvidence (P : WearErosionContactPackage) where
  contactPressureClosed : P.contactPressure
  surfaceHardnessClosed : P.surfaceHardness
  abrasiveHardnessClosed : P.abrasiveHardness
  slidingVelocityClosed : P.slidingVelocity
  wearCoefficientClosed : P.wearCoefficient
  erosionRateClosed : P.erosionRate

def WearErosionContactClosed (P : WearErosionContactPackage) : Prop :=
  P.contactPressure ∧
  P.surfaceHardness ∧
  P.abrasiveHardness ∧
  P.slidingVelocity ∧
  P.wearCoefficient ∧
  P.erosionRate

theorem wear_erosion_contact_closed_from_evidence (P : WearErosionContactPackage)
    (E : WearErosionContactEvidence P) : WearErosionContactClosed P := by
  exact And.intro E.contactPressureClosed
    (And.intro E.surfaceHardnessClosed
      (And.intro E.abrasiveHardnessClosed
        (And.intro E.slidingVelocityClosed
          (And.intro E.wearCoefficientClosed E.erosionRateClosed))))

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse