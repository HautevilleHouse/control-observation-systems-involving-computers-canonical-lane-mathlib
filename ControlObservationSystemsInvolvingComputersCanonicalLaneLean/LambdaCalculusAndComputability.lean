import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsInvolvingComputersCanonicalLaneLean

structure LambdaCalculusPackage where
  lambdaTermsDefined : Prop
  betaReductionDefined : Prop
  churchTuringThesisFormalized : Prop
  fixedPointCombinatorExists : Prop

structure LambdaCalculusEvidence (L : LambdaCalculusPackage) where
  lambdaTermsDefinedClosed : L.lambdaTermsDefined
  betaReductionDefinedClosed : L.betaReductionDefined
  churchTuringThesisFormalizedClosed : L.churchTuringThesisFormalized
  fixedPointCombinatorExistsClosed : L.fixedPointCombinatorExists

def LambdaCalculusClosed (L : LambdaCalculusPackage) : Prop :=
  L.lambdaTermsDefined ∧ L.betaReductionDefined ∧
  L.churchTuringThesisFormalized ∧ L.fixedPointCombinatorExists

theorem lambda_calculus_closed_from_evidence (L : LambdaCalculusPackage) (E : LambdaCalculusEvidence L) :
    LambdaCalculusClosed L := by
  exact And.intro E.lambdaTermsDefinedClosed
    (And.intro E.betaReductionDefinedClosed
      (And.intro E.churchTuringThesisFormalizedClosed E.fixedPointCombinatorExistsClosed))

end ControlObservationSystemsInvolvingComputersCanonicalLaneLean
end HautevilleHouse