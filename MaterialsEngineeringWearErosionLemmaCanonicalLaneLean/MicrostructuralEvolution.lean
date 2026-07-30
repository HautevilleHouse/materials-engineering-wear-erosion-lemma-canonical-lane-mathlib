import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure MicrostructuralEvolution (P : CrystallographyPackage) where
  wearSubsurfaceZoneDepth : ℝ
  grainRefinementRatio : ℝ
  dislocationAccumulationRate : ℝ
  wearSubsurfaceZoneDepthPositive : wearSubsurfaceZoneDepth > 0
  grainRefinementRatioInRange : grainRefinementRatio > 0 ∧ grainRefinementRatio < 1
  dislocationAccumulationRateNonnegative : dislocationAccumulationRate ≥ 0

structure MicrostructuralEvolutionEvidence {P : CrystallographyPackage} (E : MicrostructuralEvolution P) where
  wearSubsurfaceZoneDepthPositiveClosed : E.wearSubsurfaceZoneDepthPositive
  grainRefinementRatioInRangeClosed : E.grainRefinementRatioInRange
  dislocationAccumulationRateNonnegativeClosed : E.dislocationAccumulationRateNonnegative

def MicrostructuralEvolutionClosed {P : CrystallographyPackage} (E : MicrostructuralEvolution P) : Prop :=
  E.wearSubsurfaceZoneDepthPositive ∧ E.grainRefinementRatioInRange ∧ E.dislocationAccumulationRateNonnegative

theorem microstructural_evolution_closed_from_evidence {P : CrystallographyPackage} (E : MicrostructuralEvolution P) (Ev : MicrostructuralEvolutionEvidence E) :
    MicrostructuralEvolutionClosed E := by
  exact And.intro Ev.wearSubsurfaceZoneDepthPositiveClosed
    (And.intro Ev.grainRefinementRatioInRangeClosed Ev.dislocationAccumulationRateNonnegativeClosed)

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse
