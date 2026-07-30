import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure ArchardEquationPackage where
  wearVolume : Prop
  normalLoad : Prop
  slidingDistance : Prop
  materialHardness : Prop
  archardWearCoefficient : Prop
  equationHolds : Prop

structure ArchardEquationEvidence (A : ArchardEquationPackage) where
  wearVolumeClosed : A.wearVolume
  normalLoadClosed : A.normalLoad
  slidingDistanceClosed : A.slidingDistance
  materialHardnessClosed : A.materialHardness
  archardWearCoefficientClosed : A.archardWearCoefficient
  equationHoldsClosed : A.equationHolds

def ArchardEquationClosed (A : ArchardEquationPackage) : Prop :=
  A.wearVolume ∧
  A.normalLoad ∧
  A.slidingDistance ∧
  A.materialHardness ∧
  A.archardWearCoefficient ∧
  A.equationHolds

theorem archard_equation_closed_from_evidence (A : ArchardEquationPackage)
    (E : ArchardEquationEvidence A) : ArchardEquationClosed A := by
  exact And.intro E.wearVolumeClosed
    (And.intro E.normalLoadClosed
      (And.intro E.slidingDistanceClosed
        (And.intro E.materialHardnessClosed
          (And.intro E.archardWearCoefficientClosed E.equationHoldsClosed))))

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse