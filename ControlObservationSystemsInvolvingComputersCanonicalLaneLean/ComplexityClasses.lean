import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ControlObservationSystemsInvolvingComputersCanonicalLaneLean

structure ComplexityClassesPackage where
  timeComplexityClassesDefined : Prop
  spaceComplexityClassesDefined : Prop
  hierarchyTheorems : Prop
  completenessNotions : Prop

structure ComplexityClassesEvidence (C : ComplexityClassesPackage) where
  timeComplexityClassesDefinedClosed : C.timeComplexityClassesDefined
  spaceComplexityClassesDefinedClosed : C.spaceComplexityClassesDefined
  hierarchyTheoremsClosed : C.hierarchyTheorems
  completenessNotionsClosed : C.completenessNotions

def ComplexityClassesClosed (C : ComplexityClassesPackage) : Prop :=
  C.timeComplexityClassesDefined ∧ C.spaceComplexityClassesDefined ∧
  C.hierarchyTheorems ∧ C.completenessNotions

theorem complexity_classes_closed_from_evidence (C : ComplexityClassesPackage) (E : ComplexityClassesEvidence C) :
    ComplexityClassesClosed C := by
  exact And.intro E.timeComplexityClassesDefinedClosed
    (And.intro E.spaceComplexityClassesDefinedClosed
      (And.intro E.hierarchyTheoremsClosed E.completenessNotionsClosed))

end ControlObservationSystemsInvolvingComputersCanonicalLaneLean
end HautevilleHouse