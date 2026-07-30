import WaveScatteringSolidMechanicsCanonicalLaneLean.ElasticWaveEquation

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

structure BoundaryIntegralPackage where
  integralEquation : Prop
  kernelRegularity : Prop
  farFieldPattern : Prop

def BoundaryIntegralClosed (B : BoundaryIntegralPackage) : Prop :=
  B.integralEquation ∧ B.kernelRegularity ∧ B.farFieldPattern

structure BoundaryIntegralEvidence (B : BoundaryIntegralPackage) where
  integralClosed : B.integralEquation
  kernelClosed : B.kernelRegularity
  farFieldClosed : B.farFieldPattern

theorem boundary_integral_closed_from_evidence (B : BoundaryIntegralPackage) (E : BoundaryIntegralEvidence B) : BoundaryIntegralClosed B := by
  exact And.intro E.integralClosed (And.intro E.kernelClosed E.farFieldClosed)

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse