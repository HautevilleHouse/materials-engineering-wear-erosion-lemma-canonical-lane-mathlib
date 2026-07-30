import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure WearErosionAdmittedObject where
  materialSystem : Type u
  wearMechanism : Prop
  erosionConditions : Prop
  rateEquation : Prop
  conclusion : rateEquation

def WearErosionWitnessClosed (O : WearErosionAdmittedObject) : Prop :=
  O.rateEquation

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse