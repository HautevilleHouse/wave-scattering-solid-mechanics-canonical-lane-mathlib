import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

structure ScatteringOperatorPackage where
  incidentField : Prop
  scatteredField : Prop
  farFieldPattern : Prop
  scatteringMatrix : Prop
  opticalTheorem : Prop
  reciprocityRelation : Prop

structure ScatteringOperatorEvidence (S : ScatteringOperatorPackage) where
  incidentFieldClosed : S.incidentField
  scatteredFieldClosed : S.scatteredField
  farFieldPatternClosed : S.farFieldPattern
  scatteringMatrixClosed : S.scatteringMatrix
  opticalTheoremClosed : S.opticalTheorem
  reciprocityRelationClosed : S.reciprocityRelation

def ScatteringOperatorClosed (S : ScatteringOperatorPackage) : Prop :=
  S.incidentField ∧ S.scatteredField ∧ S.farFieldPattern ∧
  S.scatteringMatrix ∧ S.opticalTheorem ∧ S.reciprocityRelation

theorem scattering_operator_closed_from_evidence (S : ScatteringOperatorPackage)
    (Ev : ScatteringOperatorEvidence S) : ScatteringOperatorClosed S := by
  exact And.intro Ev.incidentFieldClosed
    (And.intro Ev.scatteredFieldClosed
      (And.intro Ev.farFieldPatternClosed
        (And.intro Ev.scatteringMatrixClosed
          (And.intro Ev.opticalTheoremClosed Ev.reciprocityRelationClosed))))

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse