import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

structure WaveScatteringSpace where
  carrier : Type
  topology : TopologicalSpace carrier
  elasticityTensor : Type
  densityField : Type

structure WaveScatteringAdmittedObject where
  space : WaveScatteringSpace
  incidentWave : Type
  scatteredWave : Type
  scatteringOperator : Type
  farFieldPattern : Type
  objectBoundary : Type
  boundaryCondition : Prop
  wellPosed : Prop
  uniqueness : Prop
  conclusion : boundaryCondition → wellPosed → uniqueness

structure WaveScatteringAdmissibleClass (A : WaveScatteringAdmittedObject) where
  object : A
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : WaveScatteringAdmittedObject) : Prop :=
  A.boundaryCondition ∧ A.wellPosed ∧ A.uniqueness

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse
