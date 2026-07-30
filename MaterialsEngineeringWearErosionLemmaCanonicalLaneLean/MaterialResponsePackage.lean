import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure MaterialResponsePackage where
  hardness : Prop
  fractureToughness : Prop
  elasticModulus : Prop
  strainHardening : Prop
  fatigueStrength : Prop
  workHardeningExponent : Prop

structure MaterialResponseEvidence (M : MaterialResponsePackage) where
  hardnessClosed : M.hardness
  fractureToughnessClosed : M.fractureToughness
  elasticModulusClosed : M.elasticModulus
  strainHardeningClosed : M.strainHardening
  fatigueStrengthClosed : M.fatigueStrength
  workHardeningExponentClosed : M.workHardeningExponent

def MaterialResponseClosed (M : MaterialResponsePackage) : Prop :=
  M.hardness ∧ M.fractureToughness ∧ M.elasticModulus ∧
  M.strainHardening ∧ M.fatigueStrength ∧ M.workHardeningExponent

theorem material_response_closed_from_evidence (M : MaterialResponsePackage)
    (E : MaterialResponseEvidence M) : MaterialResponseClosed M := by
  exact And.intro E.hardnessClosed
    (And.intro E.fractureToughnessClosed
      (And.intro E.elasticModulusClosed
        (And.intro E.strainHardeningClosed
          (And.intro E.fatigueStrengthClosed E.workHardeningExponentClosed))))

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse