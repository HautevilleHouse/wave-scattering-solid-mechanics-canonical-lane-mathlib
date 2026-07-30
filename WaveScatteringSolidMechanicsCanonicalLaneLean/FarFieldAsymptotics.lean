import canonicalLaneMathlib.AdmissibleClass
import WaveScatteringSolidMechanicsCanonicalLaneLean.WaveScatteringAdmissibleClass

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

structure FarFieldAsymptoticsPackage (A : WaveScatteringSpace) where
  farFieldPatternType : Type
  scatteringAmplitude : Type
  asymptoticExpansion : Prop
  radiationCondition : Prop
  uniqueness : Prop

structure FarFieldAsymptoticsEvidence {A : WaveScatteringSpace} (P : FarFieldAsymptoticsPackage A) where
  asymptoticExpansionClosed : P.asymptoticExpansion
  radiationConditionClosed : P.radiationCondition
  uniquenessClosed : P.uniqueness

def FarFieldAsymptoticsClosed {A : WaveScatteringSpace} (P : FarFieldAsymptoticsPackage A) : Prop :=
  P.asymptoticExpansion ∧ P.radiationCondition ∧ P.uniqueness

theorem far_field_asymptotics_closed_from_evidence {A : WaveScatteringSpace}
    (P : FarFieldAsymptoticsPackage A) (E : FarFieldAsymptoticsEvidence P) :
    FarFieldAsymptoticsClosed P := by
  exact And.intro E.asymptoticExpansionClosed
    (And.intro E.radiationConditionClosed E.uniquenessClosed)

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse
