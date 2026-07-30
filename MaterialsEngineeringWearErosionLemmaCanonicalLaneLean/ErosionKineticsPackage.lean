import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure ErosionKineticsPackage where
  particleVelocityDistribution : Prop
  impactAngleDistribution : Prop
  erodentFlux : Prop
  erosionRate : Prop
  incubationPeriod : Prop
  steadyState : Prop

structure ErosionKineticsEvidence (E : ErosionKineticsPackage) where
  particleVelocityDistributionClosed : E.particleVelocityDistribution
  impactAngleDistributionClosed : E.impactAngleDistribution
  erodentFluxClosed : E.erodentFlux
  erosionRateClosed : E.erosionRate
  incubationPeriodClosed : E.incubationPeriod
  steadyStateClosed : E.steadyState

def ErosionKineticsClosed (E : ErosionKineticsPackage) : Prop :=
  E.particleVelocityDistribution ∧ E.impactAngleDistribution ∧
  E.erodentFlux ∧ E.erosionRate ∧ E.incubationPeriod ∧ E.steadyState

theorem erosion_kinetics_closed_from_evidence (E : ErosionKineticsPackage)
    (K : ErosionKineticsEvidence E) : ErosionKineticsClosed E := by
  exact And.intro K.particleVelocityDistributionClosed
    (And.intro K.impactAngleDistributionClosed
      (And.intro K.erodentFluxClosed
        (And.intro K.erosionRateClosed
          (And.intro K.incubationPeriodClosed K.steadyStateClosed))))

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse