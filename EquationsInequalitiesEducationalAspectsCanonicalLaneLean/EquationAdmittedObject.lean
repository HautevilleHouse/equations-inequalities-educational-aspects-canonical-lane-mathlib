import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EquationsInequalitiesEducationalAspectsCanonicalLaneLean.EquationStructure

namespace HautevilleHouse
namespace EquationsInequalitiesEducationalAspectsCanonicalLaneLean

structure EquationAdmittedObject where
  problem : EquationProblem
  solvableByKnownMethod : Prop
  difficultyAssessed : Prop
  conclusion : solvableByKnownMethod ∨ difficultyAssessed

structure EquationAdmissibleClass where
  object : EquationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def equationWitnessClosed (O : EquationAdmittedObject) : Prop :=
  O.solvableByKnownMethod

end EquationsInequalitiesEducationalAspectsCanonicalLaneLean
end HautevilleHouse