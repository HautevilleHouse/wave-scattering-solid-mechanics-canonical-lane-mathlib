import WaveScatteringSolidMechanicsCanonicalLaneLean.ElasticWaveEquation

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

structure ScatteringAmplitudePackage {E : ElasticWaveEquationPackage} (e : ElasticWaveEquationEvidence E) where
  incidenceAngle : ℝ
  scatteredAngle : ℝ
  amplitudeFunction : ℝ → ℝ
  amplitudeIsBounded : Prop
  amplitudeIsBoundedTerm : amplitudeIsBounded

structure ScatteringAmplitudeEvidence {E : ElasticWaveEquationPackage} {e : ElasticWaveEquationEvidence E} (S : ScatteringAmplitudePackage e) where
  amplitudeIsBoundedClosed : S.amplitudeIsBounded

def ScatteringAmplitudeClosed {E : ElasticWaveEquationPackage} {e : ElasticWaveEquationEvidence E} (S : ScatteringAmplitudePackage e) : Prop :=
  S.amplitudeIsBounded

theorem scattering_amplitude_closed_from_evidence {E : ElasticWaveEquationPackage} {e : ElasticWaveEquationEvidence E} (S : ScatteringAmplitudePackage e) (ev : ScatteringAmplitudeEvidence S) : ScatteringAmplitudeClosed S := by
  exact ev.amplitudeIsBoundedClosed

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse