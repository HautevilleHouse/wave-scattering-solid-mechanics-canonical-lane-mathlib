import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

structure BoundaryConditionsPackage where
  tractionBoundary : Prop
  displacementBoundary : Prop
  interfaceConditions : Prop
  farFieldRadiation : Prop
  impedanceCondition : Prop

structure BoundaryConditionsEvidence (B : BoundaryConditionsPackage) where
  tractionBoundaryClosed : B.tractionBoundary
  displacementBoundaryClosed : B.displacementBoundary
  interfaceConditionsClosed : B.interfaceConditions
  farFieldRadiationClosed : B.farFieldRadiation
  impedanceConditionClosed : B.impedanceCondition

def BoundaryConditionsClosed (B : BoundaryConditionsPackage) : Prop :=
  B.tractionBoundary ∧ B.displacementBoundary ∧ B.interfaceConditions ∧
  B.farFieldRadiation ∧ B.impedanceCondition

theorem boundary_conditions_closed_from_evidence (B : BoundaryConditionsPackage)
    (Ev : BoundaryConditionsEvidence B) : BoundaryConditionsClosed B := by
  exact And.intro Ev.tractionBoundaryClosed
    (And.intro Ev.displacementBoundaryClosed
      (And.intro Ev.interfaceConditionsClosed
        (And.intro Ev.farFieldRadiationClosed Ev.impedanceConditionClosed)))

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse