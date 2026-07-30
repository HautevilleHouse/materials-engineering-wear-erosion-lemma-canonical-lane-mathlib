import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure WearModelingPackage where
  archardEquation : Prop
  erosiveWearModel : Prop
  fatigueWearModel : Prop
  frettingWearModel : Prop
  wearMap : Prop
  wearTransitionCriterion : Prop

structure WearModelingEvidence (W : WearModelingPackage) where
  archardEquationClosed : W.archardEquation
  erosiveWearModelClosed : W.erosiveWearModel
  fatigueWearModelClosed : W.fatigueWearModel
  frettingWearModelClosed : W.frettingWearModel
  wearMapClosed : W.wearMap
  wearTransitionCriterionClosed : W.wearTransitionCriterion

def WearModelingClosed (W : WearModelingPackage) : Prop :=
  W.archardEquation ∧ W.erosiveWearModel ∧ W.fatigueWearModel ∧
  W.frettingWearModel ∧ W.wearMap ∧ W.wearTransitionCriterion

theorem wear_modeling_closed_from_evidence (W : WearModelingPackage)
    (E : WearModelingEvidence W) : WearModelingClosed W := by
  exact And.intro E.archardEquationClosed
    (And.intro E.erosiveWearModelClosed
      (And.intro E.fatigueWearModelClosed
        (And.intro E.frettingWearModelClosed
          (And.intro E.wearMapClosed E.wearTransitionCriterionClosed))))

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse