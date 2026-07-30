import canonicalLaneMathlib.AdmissibleClass

/-!
# Wave Scattering Green Function Package
-/

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

structure WaveScatteringGreenFunctionPackage (W : ElasticWaveEquationPackage G) where
  fundamentalSolution : Type u
  farFieldAsymptotics : Prop
  radiationCondition : Prop
  sommerfeldCondition : Prop
  greenTensor : Prop

structure WaveScatteringGreenFunctionEvidence {W : ElasticWaveEquationPackage G}
    (S : WaveScatteringGreenFunctionPackage W) where
  farFieldAsymptoticsClosed : S.farFieldAsymptotics
  radiationConditionClosed : S.radiationCondition
  greenTensorClosed : S.greenTensor

def WaveScatteringGreenFunctionClosed {W : ElasticWaveEquationPackage G}
    (S : WaveScatteringGreenFunctionPackage W) : Prop :=
  S.farFieldAsymptotics ∧ S.radiationCondition ∧ S.greenTensor

theorem wave_scattering_green_function_closed_from_evidence
    {W : ElasticWaveEquationPackage G} (S : WaveScatteringGreenFunctionPackage W)
    (E : WaveScatteringGreenFunctionEvidence S) : WaveScatteringGreenFunctionClosed S := by
  exact And.intro E.farFieldAsymptoticsClosed
    (And.intro E.radiationConditionClosed E.greenTensorClosed)

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse
