import WaveScatteringSolidMechanicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

structure ElasticWaveEquationPackage where
  density : ℝ
  lameLambda : ℝ
  lameMu : ℝ
  waveSpeed : ℝ
  waveSpeed := √((lameLambda + 2*lameMu)/density)

def waveSpeedCalc (p : ElasticWaveEquationPackage) : ℝ := p.waveSpeed

structure ElasticWaveEquationEvidence (p : ElasticWaveEquationPackage) where
  densityPositive : p.density > 0
  lameMuPositive : p.lameMu > 0
  waveSpeedPositive : p.waveSpeed > 0

def ElasticWaveEquationClosed (p : ElasticWaveEquationPackage) : Prop :=
  p.density > 0 ∧ p.lameMu > 0 ∧ p.waveSpeed > 0

theorem elastic_wave_equation_closed_from_evidence (p : ElasticWaveEquationPackage) (e : ElasticWaveEquationEvidence p) : ElasticWaveEquationClosed p := by
  exact And.intro e.densityPositive (And.intro e.lameMuPositive e.waveSpeedPositive)

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse