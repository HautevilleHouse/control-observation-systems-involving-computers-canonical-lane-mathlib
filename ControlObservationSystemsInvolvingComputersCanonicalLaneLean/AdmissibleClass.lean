import HautevilleHouse.ControlObservationSystemsInvolvingComputersCanonicalLaneLean.MathlibObjects

namespace HautevilleHouse
namespace ControlObservationSystemsInvolvingComputersCanonicalLaneLean

structure AdmissibleClass where
  object : AdmittedObservationObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ObservationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ControlObservationSystemsInvolvingComputersCanonicalLaneLean
end HautevilleHouse