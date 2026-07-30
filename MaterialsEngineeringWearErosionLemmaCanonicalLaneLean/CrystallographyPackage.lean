import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

structure CrystalStructure where
  latticeType : String
  basisVectors : List (Float × Float × Float)
  atomicPositions : List (Float × Float × Float)
  symmetryGroup : String

def CrystalStructureClosed (C : CrystalStructure) : Prop :=
  C.latticeType ≠ "" ∧ C.basisVectors.length ≥ 3 ∧ C.atomicPositions.length ≥ 1

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse