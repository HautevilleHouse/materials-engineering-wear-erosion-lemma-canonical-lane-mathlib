import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure PhaseBoundary where
  phaseA : String
  phaseB : String
  temperature : Float
  pressure : Float

structure PhaseDiagram where
  components : List String
  boundaries : List PhaseBoundary
  phases : List String

def PhaseDiagramClosed (P : PhaseDiagram) : Prop :=
  P.components.length ≥ 2 ∧ P.boundaries.length ≥ 1 ∧ P.phases.length ≥ 1

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse