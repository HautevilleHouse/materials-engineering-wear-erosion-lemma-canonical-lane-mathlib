import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure MicrostructureEvolutionPackage where
  topologicalChanges : Prop
  phaseNucleation : Prop
  grainBoundaryMigration : Prop
  dislocationDensity : Prop
  recrystallization : Prop

structure MicrostructureEvolutionEvidence (M : MicrostructureEvolutionPackage) where
  topologicalChangesClosed : M.topologicalChanges
  phaseNucleationClosed : M.phaseNucleation
  grainBoundaryMigrationClosed : M.grainBoundaryMigration
  dislocationDensityClosed : M.dislocationDensity
  recrystallizationClosed : M.recrystallization

def MicrostructureEvolutionClosed (M : MicrostructureEvolutionPackage) : Prop :=
  M.topologicalChanges ∧ M.phaseNucleation ∧ M.grainBoundaryMigration ∧ M.dislocationDensity ∧ M.recrystallization

theorem microstructure_evolution_closed_from_evidence (M : MicrostructureEvolutionPackage) (E : MicrostructureEvolutionEvidence M) :
    MicrostructureEvolutionClosed M := by
  exact And.intro E.topologicalChangesClosed
    (And.intro E.phaseNucleationClosed
      (And.intro E.grainBoundaryMigrationClosed
        (And.intro E.dislocationDensityClosed E.recrystallizationClosed)))

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse