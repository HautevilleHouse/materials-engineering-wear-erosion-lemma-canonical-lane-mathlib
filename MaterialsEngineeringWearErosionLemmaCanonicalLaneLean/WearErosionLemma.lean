import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure WearErosionLemma (C : WearErosionConstants) where
  archardWearModel : ArchardWearModel C
  erosionMechanism : ErosionMechanism C
  crystallography : CrystallographyPackage
  microstructuralEvolution : MicrostructuralEvolution crystallography
  combinedWearErosionRate : ℝ
  combinedWearErosionRateFormula : combinedWearErosionRate = archardWearModel.wearVolume + erosionMechanism.erosionRate
  combinedRateNonnegative : combinedWearErosionRate ≥ 0

structure WearErosionLemmaEvidence (C : WearErosionConstants) (L : WearErosionLemma C) where
  archardEvidence : ArchardWearModelEvidence L.archardWearModel
  erosionEvidence : ErosionMechanismEvidence L.erosionMechanism
  crystallographyEvidence : CrystallographyEvidence L.crystallography
  microstructuralEvidence : MicrostructuralEvolutionEvidence L.microstructuralEvolution
  combinedWearErosionRateFormulaClosed : L.combinedWearErosionRateFormula
  combinedRateNonnegativeClosed : L.combinedRateNonnegative

def WearErosionLemmaClosed (C : WearErosionConstants) (L : WearErosionLemma C) : Prop :=
  ArchardWearModelClosed L.archardWearModel ∧ ErosionMechanismClosed L.erosionMechanism ∧
  CrystallographyClosed L.crystallography ∧ MicrostructuralEvolutionClosed L.microstructuralEvolution ∧
  L.combinedWearErosionRateFormula ∧ L.combinedRateNonnegative

theorem wear_erosion_lemma_closed_from_evidence (C : WearErosionConstants) (L : WearErosionLemma C) (E : WearErosionLemmaEvidence C L) :
    WearErosionLemmaClosed C L := by
  have hArchard : ArchardWearModelClosed L.archardWearModel :=
    archard_wear_model_closed_from_evidence L.archardWearModel E.archardEvidence
  have hErosion : ErosionMechanismClosed L.erosionMechanism :=
    erosion_mechanism_closed_from_evidence L.erosionMechanism E.erosionEvidence
  have hCrystallography : CrystallographyClosed L.crystallography :=
    crystallography_closed_from_evidence L.crystallography E.crystallographyEvidence
  have hMicro : MicrostructuralEvolutionClosed L.microstructuralEvolution :=
    microstructural_evolution_closed_from_evidence L.microstructuralEvolution E.microstructuralEvidence
  exact And.intro hArchard (And.intro hErosion (And.intro hCrystallography (And.intro hMicro (And.intro E.combinedWearErosionRateFormulaClosed E.combinedRateNonnegativeClosed))))

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse
