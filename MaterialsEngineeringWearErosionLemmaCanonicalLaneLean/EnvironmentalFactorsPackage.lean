import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure EnvironmentalFactorsPackage where
  temperature : Prop
  humidity : Prop
  corrosiveMedia : Prop
  lubrication : Prop
  contamination : Prop
  slidingVelocity : Prop
  normalLoad : Prop

structure EnvironmentalFactorsEvidence (E : EnvironmentalFactorsPackage) where
  temperatureClosed : E.temperature
  humidityClosed : E.humidity
  corrosiveMediaClosed : E.corrosiveMedia
  lubricationClosed : E.lubrication
  contaminationClosed : E.contamination
  slidingVelocityClosed : E.slidingVelocity
  normalLoadClosed : E.normalLoad

def EnvironmentalFactorsClosed (E : EnvironmentalFactorsPackage) : Prop :=
  E.temperature ∧ E.humidity ∧ E.corrosiveMedia ∧ E.lubrication ∧
  E.contamination ∧ E.slidingVelocity ∧ E.normalLoad

theorem environmental_factors_closed_from_evidence
    (E : EnvironmentalFactorsPackage) (F : EnvironmentalFactorsEvidence E) :
    EnvironmentalFactorsClosed E := by
  exact And.intro F.temperatureClosed
    (And.intro F.humidityClosed
      (And.intro F.corrosiveMediaClosed
        (And.intro F.lubricationClosed
          (And.intro F.contaminationClosed
            (And.intro F.slidingVelocityClosed F.normalLoadClosed)))))

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse