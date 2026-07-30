import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

structure ElasticMedium where
  density : ℝ
  lameLambda : ℝ
  lameMu : ℝ
  positiveDensity : density > 0
  positiveLambda : lameLambda > 0
  positiveMu : lameMu > 0

structure ElasticWaveField where
  medium : ElasticMedium
  frequency : ℝ
  displacementField : Type u
  stressField : Type v
  displacementContinuity : Prop
  tractionContinuity : Prop
  frequencyReal : frequency ∈ ℝ

def ElasticWaveFieldClosed (F : ElasticWaveField) : Prop :=
  F.displacementContinuity ∧ F.tractionContinuity

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse