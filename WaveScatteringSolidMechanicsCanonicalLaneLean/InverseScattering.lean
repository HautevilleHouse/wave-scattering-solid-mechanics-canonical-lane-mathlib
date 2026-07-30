import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

structure InverseScatteringProblem where
  farFieldData : Type u
  targetShape : Type v
  uniquenessQuestion : Prop
  reconstructionMethod : Type w

def InverseScatteringClosed (I : InverseScatteringProblem) : Prop :=
  I.uniquenessQuestion ∧ I.reconstructionMethod ≠ ∅

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse