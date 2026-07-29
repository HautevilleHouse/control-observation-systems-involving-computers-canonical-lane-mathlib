import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsInvolvingComputersCanonicalLaneLean

structure ControlObservationSystem where
  stateSpace : Type u
  observationSpace : Type v
  controlSpace : Type w
  dynamics : stateSpace → controlSpace → stateSpace
  observation : stateSpace → observationSpace
  initialStates : Set stateSpace

def systemAdmissible (S : ControlObservationSystem) : Prop :=
  Nonempty S.stateSpace ∧ Nonempty S.observationSpace ∧ Nonempty S.controlSpace

end ControlObservationSystemsInvolvingComputersCanonicalLaneLean
end HautevilleHouse