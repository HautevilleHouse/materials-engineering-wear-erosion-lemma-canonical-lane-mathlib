import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringWearErosionLemmaCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  WearErosionWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end MaterialsEngineeringWearErosionLemmaCanonicalLaneLean
end HautevilleHouse