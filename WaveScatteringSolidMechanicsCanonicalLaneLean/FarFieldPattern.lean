import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

structure FarFieldPattern where
  direction : ℝ³
  amplitude : ℝ
  phase : ℝ
  incidentDirection : ℝ³
  polarization : ℝ³
  derivedFrom : Type u

def FarFieldPatternClosed (F : FarFieldPattern) : Prop :=
  F.derivedFrom ≠ ∅

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse