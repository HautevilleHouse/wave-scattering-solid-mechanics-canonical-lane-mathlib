import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

structure AdmissibleClass where
  object : ScatteringObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ScatteringWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse