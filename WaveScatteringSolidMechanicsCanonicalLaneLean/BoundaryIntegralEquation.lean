import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

structure BoundaryData where
  incidentWave : Type u
  scatteredWave : Type v
  totalWave : incidentWave × scatteredWave
  boundaryCondition : Prop

structure BoundaryIntegralEquation where
  boundaryData : BoundaryData
  kernel : Type w
  integralOperator : Type x
  wellPosed : Prop
  uniqueness : Prop

def BoundaryIntegralEquationClosed (B : BoundaryIntegralEquation) : Prop :=
  B.wellPosed ∧ B.uniqueness

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse