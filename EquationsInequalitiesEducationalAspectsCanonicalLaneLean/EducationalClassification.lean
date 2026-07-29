import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.EquationsInequalitiesEducationalAspectsCanonicalLaneLean.EquationStructure

namespace HautevilleHouse
namespace EquationsInequalitiesEducationalAspectsCanonicalLaneLean

structure EducationalClassification where
  linearEquations : Prop
  quadraticEquations : Prop
  polynomialInequalities : Prop
  rationalInequalities : Prop
  systemOfEquations : Prop
  allClassified : linearEquations ∧ quadraticEquations ∧ polynomialInequalities ∧ rationalInequalities ∧ systemOfEquations

structure EducationalClassificationEvidence (C : EducationalClassification) where
  linearEquationsClosed : C.linearEquations
  quadraticEquationsClosed : C.quadraticEquations
  polynomialInequalitiesClosed : C.polynomialInequalities
  rationalInequalitiesClosed : C.rationalInequalities
  systemOfEquationsClosed : C.systemOfEquations

def EducationalClassificationClosed (C : EducationalClassification) : Prop :=
  C.linearEquations ∧ C.quadraticEquations ∧ C.polynomialInequalities ∧ C.rationalInequalities ∧ C.systemOfEquations

theorem educational_classification_closed_from_evidence (C : EducationalClassification) (E : EducationalClassificationEvidence C) :
    EducationalClassificationClosed C := by
  exact And.intro E.linearEquationsClosed
    (And.intro E.quadraticEquationsClosed
      (And.intro E.polynomialInequalitiesClosed
        (And.intro E.rationalInequalitiesClosed E.systemOfEquationsClosed)))

end EquationsInequalitiesEducationalAspectsCanonicalLaneLean
end HautevilleHouse