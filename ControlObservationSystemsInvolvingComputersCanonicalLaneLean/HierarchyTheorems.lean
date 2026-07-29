import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsInvolvingComputersCanonicalLaneLean

type TimeConstructible (f : ℕ → ℕ) : Prop :=
  existsTM : TuringMachine
  timeBound : ∀ n, steps ≤ f n

type SpaceConstructible (f : ℕ → ℕ) : Prop :=
  existsTM : TuringMachine
  spaceBound : ∀ n, cells ≤ f n

theorem time_hierarchy (f g : ℕ → ℕ) (hf : TimeConstructible f) (hg : TimeConstructible g)
    (h : f(n) * log(f(n)) < g(n) ) : DTIME(f) ⊂ DTIME(g) := by
  sorry

theorem space_hierarchy (f g : ℕ → ℕ) (hf : SpaceConstructible f) (hg : SpaceConstructible g)
    (h : f(n) < g(n)) : DSPACE(f) ⊂ DSPACE(g) := by
  sorry

def hierarchyClosed (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem hierarchy_from_admissible (A : AdmissibleClass) : hierarchyClosed A :=
  A.gateWitness

end ControlObservationSystemsInvolvingComputersCanonicalLaneLean
end HautevilleHouse