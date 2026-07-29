import HautevilleHouse.EquationsInequalitiesEducationalAspectsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace EquationsInequalitiesEducationalAspectsCanonicalLaneLean

structure EquationSolvingCompetencePackage where
  proceduralFluency : Prop
  conceptualUnderstanding : Prop
  strategicCompetence : Prop
  adaptiveReasoning : Prop
  productiveDisposition : Prop

structure EquationSolvingCompetenceEvidence (P : EquationSolvingCompetencePackage) where
  proceduralFluencyClosed : P.proceduralFluency
  conceptualUnderstandingClosed : P.conceptualUnderstanding
  strategicCompetenceClosed : P.strategicCompetence
  adaptiveReasoningClosed : P.adaptiveReasoning
  productiveDispositionClosed : P.productiveDisposition

def EquationSolvingCompetenceClosed (P : EquationSolvingCompetencePackage) : Prop :=
  P.proceduralFluency ∧ P.conceptualUnderstanding ∧ P.strategicCompetence ∧ P.adaptiveReasoning ∧ P.productiveDisposition

theorem equation_solving_competence_closed_from_evidence
    (P : EquationSolvingCompetencePackage) (E : EquationSolvingCompetenceEvidence P) :
    EquationSolvingCompetenceClosed P := by
  exact And.intro E.proceduralFluencyClosed
    (And.intro E.conceptualUnderstandingClosed
      (And.intro E.strategicCompetenceClosed
        (And.intro E.adaptiveReasoningClosed E.productiveDispositionClosed)))

end EquationsInequalitiesEducationalAspectsCanonicalLaneLean
end HautevilleHouse