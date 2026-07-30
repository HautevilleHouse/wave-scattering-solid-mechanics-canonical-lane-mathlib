import canonicalLaneMathlib.AdmissibleClass

/-!
# Layer Potential Method Package
-/

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

structure LayerPotentialMethodPackage (W : ElasticWaveEquationPackage G) where
  singleLayerPotential : Type u
  doubleLayerPotential : Type v
  boundaryIntegralEquation : Prop
  jumpRelations : Prop
  wellPosedness : Prop

structure LayerPotentialMethodEvidence {W : ElasticWaveEquationPackage G}
    (L : LayerPotentialMethodPackage W) where
  boundaryIntegralEquationClosed : L.boundaryIntegralEquation
  jumpRelationsClosed : L.jumpRelations
  wellPosednessClosed : L.wellPosedness

def LayerPotentialMethodClosed {W : ElasticWaveEquationPackage G}
    (L : LayerPotentialMethodPackage W) : Prop :=
  L.boundaryIntegralEquation ∧ L.jumpRelations ∧ L.wellPosedness

theorem layer_potential_method_closed_from_evidence
    {W : ElasticWaveEquationPackage G} (L : LayerPotentialMethodPackage W)
    (E : LayerPotentialMethodEvidence L) : LayerPotentialMethodClosed L := by
  exact And.intro E.boundaryIntegralEquationClosed
    (And.intro E.jumpRelationsClosed E.wellPosednessClosed)

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse
