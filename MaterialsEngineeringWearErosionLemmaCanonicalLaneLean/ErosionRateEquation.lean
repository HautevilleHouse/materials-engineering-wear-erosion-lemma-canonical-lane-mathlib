import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure ErosionRateEquationPackage where
  massLossRate : Prop
  impactVelocityDependence : Prop
  particleFluxModel : Prop
  materialHardnessTerm : Prop
  erosionEfficiency : Prop

structure ErosionRateEquationEvidence (E : ErosionRateEquationPackage) where
  massLossRateClosed : E.massLossRate
  impactVelocityDependenceClosed : E.impactVelocityDependence
  particleFluxModelClosed : E.particleFluxModel
  materialHardnessTermClosed : E.materialHardnessTerm
  erosionEfficiencyClosed : E.erosionEfficiency

def ErosionRateEquationClosed (E : ErosionRateEquationPackage) : Prop :=
  E.massLossRate ∧ E.impactVelocityDependence ∧ E.particleFluxModel ∧ E.materialHardnessTerm ∧ E.erosionEfficiency

theorem erosion_rate_equation_closed_from_evidence (E : ErosionRateEquationPackage) (Ev : ErosionRateEquationEvidence E) :
    ErosionRateEquationClosed E := by
  exact And.intro Ev.massLossRateClosed
    (And.intro Ev.impactVelocityDependenceClosed
      (And.intro Ev.particleFluxModelClosed
        (And.intro Ev.materialHardnessTermClosed Ev.erosionEfficiencyClosed)))

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse