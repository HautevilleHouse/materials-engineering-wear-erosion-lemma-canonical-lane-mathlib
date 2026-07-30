import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure AbrasiveWearMechanismPackage where
  cuttingAction : Prop
  ploughingDeformation : Prop
  wedgeFormation : Prop
  microcracking : Prop
  wearCoefficient : Prop

structure AbrasiveWearMechanismEvidence (A : AbrasiveWearMechanismPackage) where
  cuttingActionClosed : A.cuttingAction
  ploughingDeformationClosed : A.ploughingDeformation
  wedgeFormationClosed : A.wedgeFormation
  microcrackingClosed : A.microcracking
  wearCoefficientClosed : A.wearCoefficient

def AbrasiveWearMechanismClosed (A : AbrasiveWearMechanismPackage) : Prop :=
  A.cuttingAction ∧ A.ploughingDeformation ∧ A.wedgeFormation ∧ A.microcracking ∧ A.wearCoefficient

theorem abrasive_wear_mechanism_closed_from_evidence (A : AbrasiveWearMechanismPackage) (E : AbrasiveWearMechanismEvidence A) :
    AbrasiveWearMechanismClosed A := by
  exact And.intro E.cuttingActionClosed
    (And.intro E.ploughingDeformationClosed
      (And.intro E.wedgeFormationClosed
        (And.intro E.microcrackingClosed E.wearCoefficientClosed)))

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse