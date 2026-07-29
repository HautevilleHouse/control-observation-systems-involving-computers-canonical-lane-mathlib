import HautevilleHouse.ControlObservationSystemsInvolvingComputersCanonicalLaneLean.FinalTheorem

namespace HautevilleHouse
namespace ControlObservationSystemsInvolvingComputersCanonicalLaneLean

structure ObservationTheoremStatement where
  sourceKey : String
  theoremName : String
  theoremObject : String
  admissibleClassClosure : Prop
  carriedGap : String

def sourceObservationTheorem : ObservationTheoremStatement :=
  { sourceKey := "control-observation-systems-involving-computers"
    theoremName := "ControlObservationEndgame"
    theoremObject := "Computability and complexity — Church-Turing thesis, NP-completeness, hierarchy theorems, algorithmic randomness"
    admissibleClassClosure := ConstrainedObservationClosure
    carriedGap := "Unrestricted classical closure remains outside the admissible class"
  }

theorem theorem_statement_closure_holds :
    sourceObservationTheorem.admissibleClassClosure := by
  intro A
  exact constrained_observation_endgame A

end ControlObservationSystemsInvolvingComputersCanonicalLaneLean
end HautevilleHouse