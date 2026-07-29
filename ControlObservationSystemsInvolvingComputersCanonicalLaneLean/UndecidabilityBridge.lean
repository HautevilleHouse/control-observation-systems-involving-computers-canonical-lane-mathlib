import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControlObservationSystemsInvolvingComputersCanonicalLaneLean.ControlObservationSystems

namespace HautevilleHouse
namespace ControlObservationSystemsInvolvingComputersCanonicalLaneLean

structure TuringMachine where
  states : Type u
  tapeSymbols : Type v
  transition : states → tapeSymbols → states × tapeSymbols × Direction

inductive Direction where
  | Left
  | Right
  | Stay

structure HaltingProblem where
  machine : TuringMachine
  input : List TuringMachine.tapeSymbols
  halts : Prop

def undecidableViaReduction (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied → HaltingProblem.halts

theorem halting_implies_gate (A : AdmissibleClass) (h : undecidableViaReduction A) :
    gateClosed A := by
  rcases A.gateWitness with (h' | h'')
  · exact Or.inl h'
  · exact Or.inr h''

end ControlObservationSystemsInvolvingComputersCanonicalLaneLean
end HautevilleHouse