import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsInvolvingComputersCanonicalLaneLean

structure DecidabilityPackage where
  decisionProblemDefined : Prop
  haltingProblemUndecidable : Prop
  reductionsExist : Prop
  completeProblemsIdentified : Prop

structure DecidabilityEvidence (D : DecidabilityPackage) where
  decisionProblemDefinedClosed : D.decisionProblemDefined
  haltingProblemUndecidableClosed : D.haltingProblemUndecidable
  reductionsExistClosed : D.reductionsExist
  completeProblemsIdentifiedClosed : D.completeProblemsIdentified

def DecidabilityClosed (D : DecidabilityPackage) : Prop :=
  D.decisionProblemDefined ∧ D.haltingProblemUndecidable ∧
  D.reductionsExist ∧ D.completeProblemsIdentified

theorem decidability_closed_from_evidence (D : DecidabilityPackage) (E : DecidabilityEvidence D) :
    DecidabilityClosed D := by
  exact And.intro E.decisionProblemDefinedClosed
    (And.intro E.haltingProblemUndecidableClosed
      (And.intro E.reductionsExistClosed E.completeProblemsIdentifiedClosed))

end ControlObservationSystemsInvolvingComputersCanonicalLaneLean
end HautevilleHouse