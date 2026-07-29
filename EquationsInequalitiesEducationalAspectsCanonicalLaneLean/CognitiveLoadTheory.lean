import HautevilleHouse.EquationsInequalitiesEducationalAspectsCanonicalLaneLean.InequalityReasoningFramework

namespace HautevilleHouse
namespace EquationsInequalitiesEducationalAspectsCanonicalLaneLean

structure CognitiveLoadTheoryPackage where
  intrinsicLoad : Prop
  extraneousLoad : Prop
  germaneLoad : Prop
  workedExampleEffect : Prop
  splitAttentionEffect : Prop

structure CognitiveLoadTheoryEvidence (C : CognitiveLoadTheoryPackage) where
  intrinsicLoadClosed : C.intrinsicLoad
  extraneousLoadClosed : C.extraneousLoad
  germaneLoadClosed : C.germaneLoad
  workedExampleEffectClosed : C.workedExampleEffect
  splitAttentionEffectClosed : C.splitAttentionEffect

def CognitiveLoadTheoryClosed (C : CognitiveLoadTheoryPackage) : Prop :=
  C.intrinsicLoad ∧ C.extraneousLoad ∧ C.germaneLoad ∧ C.workedExampleEffect ∧ C.splitAttentionEffect

theorem cognitive_load_theory_closed_from_evidence
    (C : CognitiveLoadTheoryPackage) (E : CognitiveLoadTheoryEvidence C) :
    CognitiveLoadTheoryClosed C := by
  exact And.intro E.intrinsicLoadClosed
    (And.intro E.extraneousLoadClosed
      (And.intro E.germaneLoadClosed
        (And.intro E.workedExampleEffectClosed E.splitAttentionEffectClosed)))

end EquationsInequalitiesEducationalAspectsCanonicalLaneLean
end HautevilleHouse