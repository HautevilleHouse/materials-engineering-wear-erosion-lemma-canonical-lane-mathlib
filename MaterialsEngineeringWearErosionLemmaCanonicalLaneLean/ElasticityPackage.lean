import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure ElasticModuli where
  youngsModulus : Float
  poissonRatio : Float
  shearModulus : Float
  bulkModulus : Float

def ElasticModuliClosed (E : ElasticModuli) : Prop :=
  E.youngsModulus > 0 ∧ E.poissonRatio > -1 ∧ E.poissonRatio < 0.5 ∧
  E.shearModulus > 0 ∧ E.bulkModulus > 0

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse