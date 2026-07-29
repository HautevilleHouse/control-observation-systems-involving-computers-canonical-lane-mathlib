import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsInvolvingComputersCanonicalLaneLean

structure TuringMachinePackage where
  alphabetSize : Nat
  stateCount : Nat
  transitionFunctionDefined : Prop
  haltingCondition : Prop
  universalTuringMachineConstructed : Prop

structure TuringMachineEvidence (T : TuringMachinePackage) where
  alphabetSizePositive : T.alphabetSize > 0
  stateCountPositive : T.stateCount > 0
  transitionFunctionDefinedClosed : T.transitionFunctionDefined
  haltingConditionClosed : T.haltingCondition
  universalTuringMachineConstructedClosed : T.universalTuringMachineConstructed

def TuringMachineClosed (T : TuringMachinePackage) : Prop :=
  T.alphabetSize > 0 ∧ T.stateCount > 0 ∧ T.transitionFunctionDefined ∧
  T.haltingCondition ∧ T.universalTuringMachineConstructed

theorem turing_machine_closed_from_evidence (T : TuringMachinePackage) (E : TuringMachineEvidence T) :
    TuringMachineClosed T := by
  exact And.intro E.alphabetSizePositive (And.intro E.stateCountPositive
    (And.intro E.transitionFunctionDefinedClosed
      (And.intro E.haltingConditionClosed E.universalTuringMachineConstructedClosed)))

end ControlObservationSystemsInvolvingComputersCanonicalLaneLean
end HautevilleHouse