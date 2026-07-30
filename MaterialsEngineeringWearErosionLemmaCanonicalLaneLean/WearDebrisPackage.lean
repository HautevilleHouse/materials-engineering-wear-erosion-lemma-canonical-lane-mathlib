import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure WearDebrisPackage where
  debrisSizeDistribution : Prop
  debrisMorphology : Prop
  debrisChemistry : Prop
  debrisGenerationRate : Prop
  debrisEntrapment : Prop
  debrisEjection : Prop

structure WearDebrisEvidence (W : WearDebrisPackage) where
  debrisSizeDistributionClosed : W.debrisSizeDistribution
  debrisMorphologyClosed : W.debrisMorphology
  debrisChemistryClosed : W.debrisChemistry
  debrisGenerationRateClosed : W.debrisGenerationRate
  debrisEntrapmentClosed : W.debrisEntrapment
  debrisEjectionClosed : W.debrisEjection

def WearDebrisClosed (W : WearDebrisPackage) : Prop :=
  W.debrisSizeDistribution ∧ W.debrisMorphology ∧ W.debrisChemistry ∧
  W.debrisGenerationRate ∧ W.debrisEntrapment ∧ W.debrisEjection

theorem wear_debris_closed_from_evidence (W : WearDebrisPackage)
    (E : WearDebrisEvidence W) : WearDebrisClosed W := by
  exact And.intro E.debrisSizeDistributionClosed
    (And.intro E.debrisMorphologyClosed
      (And.intro E.debrisChemistryClosed
        (And.intro E.debrisGenerationRateClosed
          (And.intro E.debrisEntrapmentClosed E.debrisEjectionClosed))))

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse