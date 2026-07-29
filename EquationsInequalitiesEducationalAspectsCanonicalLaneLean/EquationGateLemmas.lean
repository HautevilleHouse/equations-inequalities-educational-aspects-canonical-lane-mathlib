import HautevilleHouse.EquationsInequalitiesEducationalAspectsCanonicalLaneLean.EquationAdmittedObject

namespace HautevilleHouse
namespace EquationsInequalitiesEducationalAspectsCanonicalLaneLean

def gateClosed (A : EquationAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : EquationAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end EquationsInequalitiesEducationalAspectsCanonicalLaneLean
end HautevilleHouse