import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure WearParticleFormationPackage where
  plasticDeformation : Prop
  crackInitiation : Prop
  crackPropagation : Prop
  particleDetachment : Prop
  fragmentSizeDistribution : Prop

structure WearParticleFormationEvidence (W : WearParticleFormationPackage) where
  plasticDeformationClosed : W.plasticDeformation
  crackInitiationClosed : W.crackInitiation
  crackPropagationClosed : W.crackPropagation
  particleDetachmentClosed : W.particleDetachment
  fragmentSizeDistributionClosed : W.fragmentSizeDistribution

def WearParticleFormationClosed (W : WearParticleFormationPackage) : Prop :=
  W.plasticDeformation ∧ W.crackInitiation ∧ W.crackPropagation ∧ W.particleDetachment ∧ W.fragmentSizeDistribution

theorem wear_particle_formation_closed_from_evidence (W : WearParticleFormationPackage) (E : WearParticleFormationEvidence W) :
    WearParticleFormationClosed W := by
  exact And.intro E.plasticDeformationClosed
    (And.intro E.crackInitiationClosed
      (And.intro E.crackPropagationClosed
        (And.intro E.particleDetachmentClosed E.fragmentSizeDistributionClosed)))

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse