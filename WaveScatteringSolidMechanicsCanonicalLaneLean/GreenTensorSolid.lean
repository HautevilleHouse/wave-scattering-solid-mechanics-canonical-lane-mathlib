import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

structure GreenTensorSolid where
  medium : ElasticMedium
  sourcePoint : ℝ × ℝ × ℝ
  fieldPoint : ℝ × ℝ × ℝ
  matrixFunction : Type u
  satisfiesElasticEquations : Prop
  radiationCondition : Prop

def GreenTensorSolidClosed (G : GreenTensorSolid) : Prop :=
  G.satisfiesElasticEquations ∧ G.radiationCondition

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse