import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsInvolvingComputersCanonicalLaneLean

structure MartinLofTest where
  tests : ℕ → Set (ℕ → ℕ)
  measureSmall : ∀ n, μ(tests n) ≤ 2⁻ⁿ
  effective : ∀ n, tests n is effectively enumerable

def randomSequence (x : ℕ → ℕ) : Prop :=
  ∀ (T : MartinLofTest), x ∉ ⋂ n, T.tests n

def KolmogorovComplexity (x : ℕ → ℕ) (n : ℕ) : ℕ :=
  min { |p| : U(p) = x[0:n] }

theorem random_iff_incompressible (x : ℕ → ℕ) :
    randomSequence x ↔ ∀ n, KolmogorovComplexity x n ≥ n - o(n) := by
  sorry

def randomnessBridge (A : AdmissibleClass) : Prop :=
  A.endpointSatisfied → randomSequence A.object

theorem randomness_implies_gate (A : AdmissibleClass) (h : randomnessBridge A) :
    gateClosed A := by
  rcases A.gateWitness with (h' | h'')
  · exact Or.inl h'
  · exact Or.inr h''

end ControlObservationSystemsInvolvingComputersCanonicalLaneLean
end HautevilleHouse