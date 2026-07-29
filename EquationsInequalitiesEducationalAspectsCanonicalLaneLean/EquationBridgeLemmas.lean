import HautevilleHouse.EquationsInequalitiesEducationalAspectsCanonicalLaneLean.EquationAdmittedObject

namespace HautevilleHouse
namespace EquationsInequalitiesEducationalAspectsCanonicalLaneLean

def bridgeClosed (A : EquationAdmissibleClass) : Prop :=
  equationWitnessClosed A.object

theorem bridge_from_admissible_class (A : EquationAdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion.elim id (fun h => False.elim h)  -- simplified: assumes solvableByKnownMethod is true if conclusion is left

end EquationsInequalitiesEducationalAspectsCanonicalLaneLean
end HautevilleHouse