import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure WearMechanismMapPackage where
  abrasiveWear : Prop
  adhesiveWear : Prop
  fatigueWear : Prop
  corrosiveWear : Prop
  erosionMechanism : Prop
  dominantMechanismIdentified : Prop

structure WearMechanismMapEvidence (M : WearMechanismMapPackage) where
  abrasiveWearClosed : M.abrasiveWear
  adhesiveWearClosed : M.adhesiveWear
  fatigueWearClosed : M.fatigueWear
  corrosiveWearClosed : M.corrosiveWear
  erosionMechanismClosed : M.erosionMechanism
  dominantMechanismIdentifiedClosed : M.dominantMechanismIdentified

def WearMechanismMapClosed (M : WearMechanismMapPackage) : Prop :=
  M.abrasiveWear ∧
  M.adhesiveWear ∧
  M.fatigueWear ∧
  M.corrosiveWear ∧
  M.erosionMechanism ∧
  M.dominantMechanismIdentified

theorem wear_mechanism_map_closed_from_evidence (M : WearMechanismMapPackage)
    (E : WearMechanismMapEvidence M) : WearMechanismMapClosed M := by
  exact And.intro E.abrasiveWearClosed
    (And.intro E.adhesiveWearClosed
      (And.intro E.fatigueWearClosed
        (And.intro E.corrosiveWearClosed
          (And.intro E.erosionMechanismClosed E.dominantMechanismIdentifiedClosed))))

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse