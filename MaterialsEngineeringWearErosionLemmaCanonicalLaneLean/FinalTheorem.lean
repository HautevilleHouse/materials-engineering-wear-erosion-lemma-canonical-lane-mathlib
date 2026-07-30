import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsEngineeringWearErosionLemmaCanonicalLaneLean.BridgeLemmas
import HautevilleHouse.MaterialsEngineeringWearErosionLemmaCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

def ConstrainedWearErosionClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_wear_erosion_endgame (A : AdmissibleClass) :
    ConstrainedWearErosionClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse