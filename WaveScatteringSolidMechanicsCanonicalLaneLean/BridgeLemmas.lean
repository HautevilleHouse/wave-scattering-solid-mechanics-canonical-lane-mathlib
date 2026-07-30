import canonicalLaneMathlib.AdmissibleClass
import WaveScatteringSolidMechanicsCanonicalLaneLean.WaveScatteringAdmissibleClass

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

def bridgeClosed (A : WaveScatteringAdmittedObject) : Prop :=
  A.boundaryCondition ∧ A.wellPosed ∧ A.uniqueness

theorem bridge_from_admissible_class (A : WaveScatteringAdmittedObject) :
    bridgeClosed A := by
  have hc : A.boundaryCondition := A.conclusion (by trivial) (by trivial) (by trivial)
  exact And.intro hc (And.intro A.wellPosed A.uniqueness)

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse
