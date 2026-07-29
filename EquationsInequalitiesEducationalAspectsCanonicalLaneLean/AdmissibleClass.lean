import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EquationsInequalitiesEducationalAspectsCanonicalLaneLean

structure EducationalAdmittedObject where
  studentLevel : Type
  equationDomain : Type
  inequalityDomain : Type
  reasoningCompetence : Prop
  cognitiveLoad : Prop
  didacticTransposition : Prop

structure AdmissibleClass where
  object : EducationalAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.reasoningCompetence ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end EquationsInequalitiesEducationalAspectsCanonicalLaneLean
end HautevilleHouse