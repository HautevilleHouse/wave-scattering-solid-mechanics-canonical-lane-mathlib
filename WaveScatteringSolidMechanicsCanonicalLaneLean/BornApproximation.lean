import WaveScatteringSolidMechanicsCanonicalLaneLean.ScatteringAmplitude

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

structure BornApproximationPackage {E : ElasticWaveEquationPackage} {e : ElasticWaveEquationEvidence E} {S : ScatteringAmplitudePackage e} (sev : ScatteringAmplitudeEvidence S) where
  incidentWave : ℝ → ℝ
  scatteredWave : ℝ → ℝ
  firstOrderTerm : ℝ
  bornApproximationValid : Prop
  bornApproximationValidTerm : bornApproximationValid

structure BornApproximationEvidence {E : ElasticWaveEquationPackage} {e : ElasticWaveEquationEvidence E} {S : ScatteringAmplitudePackage e} {sev : ScatteringAmplitudeEvidence S} (B : BornApproximationPackage sev) where
  bornApproximationValidClosed : B.bornApproximationValid

def BornApproximationClosed {E : ElasticWaveEquationPackage} {e : ElasticWaveEquationEvidence E} {S : ScatteringAmplitudePackage e} {sev : ScatteringAmplitudeEvidence S} (B : BornApproximationPackage sev) : Prop :=
  B.bornApproximationValid

theorem born_approximation_closed_from_evidence {E : ElasticWaveEquationPackage} {e : ElasticWaveEquationEvidence E} {S : ScatteringAmplitudePackage e} {sev : ScatteringAmplitudeEvidence S} (B : BornApproximationPackage sev) (bev : BornApproximationEvidence B) : BornApproximationClosed B := by
  exact bev.bornApproximationValidClosed

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse