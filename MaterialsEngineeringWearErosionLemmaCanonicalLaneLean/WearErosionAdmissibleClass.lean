import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure WearErosionAdmittedObject where
  materialSample : Type
  surfaceGeometry : Prop
  loadingCondition : Prop
  erosionModel : Type
  wearRateLaw : Prop
  conclusion : wearRateLaw

structure WearErosionState where
  object : WearErosionAdmittedObject

def WearErosionWitnessClosed (O : WearErosionAdmittedObject) : Prop :=
  O.wearRateLaw

structure AdmissibleClass where
  object : WearErosionAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  WearErosionWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse