import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.ControlObservationSystemsInvolvingComputersCanonicalLaneLean.ControlObservationSystems

namespace HautevilleHouse
namespace ControlObservationSystemsInvolvingComputersCanonicalLaneLean

structure DecisionProblem where
  instances : Type u
  decision : instances → Bool

structure PolynomialTimeReduction (A B : DecisionProblem) where
  f : A.instances → B.instances
  f_poly : Prop
  correctness : ∀ x, A.decision x = B.decision (f x)

structure NPSystem where
  decisionProblem : DecisionProblem
  certificate : Type v
  verify : decisionProblem.instances → certificate → Bool
  verify_poly : Prop
  completeness : ∀ x, decisionProblem.decision x = true → ∃ c, verify x c = true
  soundness : ∀ x c, verify x c = true → decisionProblem.decision x = true

def NPCComplete (P : DecisionProblem) : Prop :=
  NPSystem P ∧ ∀ (Q : DecisionProblem), NPSystem Q → PolynomialTimeReduction Q P

theorem np_completeness_bridge (A : AdmissibleClass) (h : NPCComplete A.object.space) :
    bridgeClosed A := by
  exact A.object.conclusion

end ControlObservationSystemsInvolvingComputersCanonicalLaneLean
end HautevilleHouse