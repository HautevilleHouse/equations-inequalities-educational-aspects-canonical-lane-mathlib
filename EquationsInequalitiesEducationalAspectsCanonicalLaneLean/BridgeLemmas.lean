import HautevilleHouse.EquationsInequalitiesEducationalAspectsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EquationsInequalitiesEducationalAspectsCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  A.object.reasoningCompetence

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.reasoningCompetence

end EquationsInequalitiesEducationalAspectsCanonicalLaneLean
end HautevilleHouse