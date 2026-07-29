import HautevilleHouse.EquationsInequalitiesEducationalAspectsCanonicalLaneLean.GateLemmas

namespace HautevilleHouse
namespace EquationsInequalitiesEducationalAspectsCanonicalLaneLean

def ConstrainedEducationalClosure (A : AdmissibleClass) : Prop :=
  bridgeClosed A ∧ gateClosed A

theorem constrained_educational_endgame (A : AdmissibleClass) :
    ConstrainedEducationalClosure A := by
  exact And.intro (bridge_from_admissible_class A) (gate_from_admissible_class A)

end EquationsInequalitiesEducationalAspectsCanonicalLaneLean
end HautevilleHouse