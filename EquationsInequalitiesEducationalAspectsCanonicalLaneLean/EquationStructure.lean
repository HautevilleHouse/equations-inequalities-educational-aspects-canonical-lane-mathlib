import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace EquationsInequalitiesEducationalAspectsCanonicalLaneLean

structure EquationType where
  degree : ℕ
  coefficientCount : ℕ
  polynomial : Polynomial ℚ

structure EquationSolution where
  solution : ℚ
  verified : Bool

structure EquationProblem where
  equation : EquationType
  knownSolutions : List EquationSolution
  methodCategory : String
  difficulty : Nat

end EquationsInequalitiesEducationalAspectsCanonicalLaneLean
end HautevilleHouse