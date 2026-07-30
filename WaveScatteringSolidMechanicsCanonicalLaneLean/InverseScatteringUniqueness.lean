import canonicalLaneMathlib.AdmissibleClass

/-!
# Inverse Scattering Uniqueness Package
-/

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

structure InverseScatteringUniquenessPackage (W : ElasticWaveEquationPackage G) where
  farFieldMap : Type u
  uniqueness : Prop
  stabilityEstimate : Prop
  refractiveIndexRecovered : Prop
  obstacleReconstruction : Prop

structure InverseScatteringUniquenessEvidence {W : ElasticWaveEquationPackage G}
    (I : InverseScatteringUniquenessPackage W) where
  uniquenessClosed : I.uniqueness
  stabilityEstimateClosed : I.stabilityEstimate
  obstacleReconstructionClosed : I.obstacleReconstruction

def InverseScatteringUniquenessClosed {W : ElasticWaveEquationPackage G}
    (I : InverseScatteringUniquenessPackage W) : Prop :=
  I.uniqueness ∧ I.stabilityEstimate ∧ I.obstacleReconstruction

theorem inverse_scattering_uniqueness_closed_from_evidence
    {W : ElasticWaveEquationPackage G} (I : InverseScatteringUniquenessPackage W)
    (E : InverseScatteringUniquenessEvidence I) : InverseScatteringUniquenessClosed I := by
  exact And.intro E.uniquenessClosed
    (And.intro E.stabilityEstimateClosed E.obstacleReconstructionClosed)

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse
