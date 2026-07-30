import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

structure NumericalMethod (B : BoundaryIntegralEquation) where
  discretization : Type u
  solver : Type v
  errorEstimate : Prop
  convergenceRate : ℕ

def NumericalMethodClosed (B : BoundaryIntegralEquation) (N : NumericalMethod B) : Prop :=
  N.errorEstimate

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse