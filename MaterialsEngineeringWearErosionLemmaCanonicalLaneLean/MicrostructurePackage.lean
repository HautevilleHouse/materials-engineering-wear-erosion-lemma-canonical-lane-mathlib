import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure MicrostructurePackage where
  grainSizeDistribution : Prop
  phaseVolumeFraction : Prop
  dislocationDensity : Prop
  texture : Prop
  porosity : Prop
  grainBoundaryCharacter : Prop

structure MicrostructureEvidence (M : MicrostructurePackage) where
  grainSizeDistributionClosed : M.grainSizeDistribution
  phaseVolumeFractionClosed : M.phaseVolumeFraction
  dislocationDensityClosed : M.dislocationDensity
  textureClosed : M.texture
  porosityClosed : M.porosity
  grainBoundaryCharacterClosed : M.grainBoundaryCharacter

def MicrostructureClosed (M : MicrostructurePackage) : Prop :=
  M.grainSizeDistribution ∧ M.phaseVolumeFraction ∧ M.dislocationDensity ∧
  M.texture ∧ M.porosity ∧ M.grainBoundaryCharacter

theorem microstructure_closed_from_evidence (M : MicrostructurePackage)
    (E : MicrostructureEvidence M) : MicrostructureClosed M := by
  exact And.intro E.grainSizeDistributionClosed
    (And.intro E.phaseVolumeFractionClosed
      (And.intro E.dislocationDensityClosed
        (And.intro E.textureClosed
          (And.intro E.porosityClosed E.grainBoundaryCharacterClosed))))

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse