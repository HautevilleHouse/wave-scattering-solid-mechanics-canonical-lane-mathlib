import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

structure ScatteringAdmittedObject where
  wavefield : Prop
  boundaryControlled : Prop
  farFieldMeasured : Prop
  conclusion : Prop

structure AdmissibleClass where
  object : ScatteringAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  A.object.conclusion ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse