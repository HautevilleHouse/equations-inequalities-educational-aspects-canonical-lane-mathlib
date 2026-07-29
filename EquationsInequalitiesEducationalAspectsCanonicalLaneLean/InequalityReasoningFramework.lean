import HautevilleHouse.EquationsInequalitiesEducationalAspectsCanonicalLaneLean.EquationSolvingCompetence

namespace HautevilleHouse
namespace EquationsInequalitiesEducationalAspectsCanonicalLaneLean

structure InequalityReasoningFrameworkPackage where
  linearInequality : Prop
  quadraticInequality : Prop
  absoluteValueInequality : Prop
  rationalInequality : Prop
  systemsOfInequalities : Prop

structure InequalityReasoningFrameworkEvidence (F : InequalityReasoningFrameworkPackage) where
  linearInequalityClosed : F.linearInequality
  quadraticInequalityClosed : F.quadraticInequality
  absoluteValueInequalityClosed : F.absoluteValueInequality
  rationalInequalityClosed : F.rationalInequality
  systemsOfInequalitiesClosed : F.systemsOfInequalities

def InequalityReasoningFrameworkClosed (F : InequalityReasoningFrameworkPackage) : Prop :=
  F.linearInequality ∧ F.quadraticInequality ∧ F.absoluteValueInequality ∧ F.rationalInequality ∧ F.systemsOfInequalities

theorem inequality_reasoning_framework_closed_from_evidence
    (F : InequalityReasoningFrameworkPackage) (E : InequalityReasoningFrameworkEvidence F) :
    InequalityReasoningFrameworkClosed F := by
  exact And.intro E.linearInequalityClosed
    (And.intro E.quadraticInequalityClosed
      (And.intro E.absoluteValueInequalityClosed
        (And.intro E.rationalInequalityClosed E.systemsOfInequalitiesClosed)))

end EquationsInequalitiesEducationalAspectsCanonicalLaneLean
end HautevilleHouse