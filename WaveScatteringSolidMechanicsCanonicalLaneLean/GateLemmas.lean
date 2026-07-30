import canonicalLaneMathlib.AdmissibleClass
import WaveScatteringSolidMechanicsCanonicalLaneLean.WaveScatteringAdmissibleClass
import WaveScatteringSolidMechanicsCanonicalLaneLean.BridgeLemmas

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

def gateClosed (A : WaveScatteringAdmissibleClass) : Prop :=
  A.endpointSatisfied ∨ A.remainderRecorded

theorem gate_from_admissible_class (A : WaveScatteringAdmissibleClass) :
    gateClosed A := by
  exact A.gateWitness

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse
