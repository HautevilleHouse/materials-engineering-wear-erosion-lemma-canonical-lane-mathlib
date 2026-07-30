import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure TribologicalContactModelPackage where
  asperityDeformation : Prop
  realContactArea : Prop
  frictionCoefficient : Prop
  subsurfaceStrain : Prop
  thermalEffects : Prop

structure TribologicalContactModelEvidence (T : TribologicalContactModelPackage) where
  asperityDeformationClosed : T.asperityDeformation
  realContactAreaClosed : T.realContactArea
  frictionCoefficientClosed : T.frictionCoefficient
  subsurfaceStrainClosed : T.subsurfaceStrain
  thermalEffectsClosed : T.thermalEffects

def TribologicalContactModelClosed (T : TribologicalContactModelPackage) : Prop :=
  T.asperityDeformation ∧ T.realContactArea ∧ T.frictionCoefficient ∧ T.subsurfaceStrain ∧ T.thermalEffects

theorem tribological_contact_model_closed_from_evidence (T : TribologicalContactModelPackage) (E : TribologicalContactModelEvidence T) :
    TribologicalContactModelClosed T := by
  exact And.intro E.asperityDeformationClosed
    (And.intro E.realContactAreaClosed
      (And.intro E.frictionCoefficientClosed
        (And.intro E.subsurfaceStrainClosed E.thermalEffectsClosed)))

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse