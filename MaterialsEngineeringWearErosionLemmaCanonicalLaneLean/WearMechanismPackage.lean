import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure WearMechanismPackage where
  abrasiveWear : Prop
  adhesiveWear : Prop
  erosiveWear : Prop
  fatigueWear : Prop
  tribochemicalWear : Prop
  frettingWear : Prop

structure WearMechanismEvidence (W : WearMechanismPackage) where
  abrasiveWearClosed : W.abrasiveWear
  adhesiveWearClosed : W.adhesiveWear
  erosiveWearClosed : W.erosiveWear
  fatigueWearClosed : W.fatigueWear
  tribochemicalWearClosed : W.tribochemicalWear
  frettingWearClosed : W.frettingWear

def WearMechanismClosed (W : WearMechanismPackage) : Prop :=
  W.abrasiveWear ∧ W.adhesiveWear ∧ W.erosiveWear ∧
  W.fatigueWear ∧ W.tribochemicalWear ∧ W.frettingWear

theorem wear_mechanism_closed_from_evidence (W : WearMechanismPackage)
    (E : WearMechanismEvidence W) : WearMechanismClosed W := by
  exact And.intro E.abrasiveWearClosed
    (And.intro E.adhesiveWearClosed
      (And.intro E.erosiveWearClosed
        (And.intro E.fatigueWearClosed
          (And.intro E.tribochemicalWearClosed E.frettingWearClosed))))

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse