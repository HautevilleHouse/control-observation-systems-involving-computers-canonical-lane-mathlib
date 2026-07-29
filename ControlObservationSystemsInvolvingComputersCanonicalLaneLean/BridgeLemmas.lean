import HautevilleHouse.ControlObservationSystemsInvolvingComputersCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsInvolvingComputersCanonicalLaneLean

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ObservationWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ControlObservationSystemsInvolvingComputersCanonicalLaneLean
end HautevilleHouse