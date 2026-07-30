import canonicalLaneMathlib.AdmissibleClass
import WaveScatteringSolidMechanicsCanonicalLaneLean.WaveScatteringAdmissibleClass

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

structure PotentialTheoryPackage (A : WaveScatteringSpace) where
  incidentPotential : Type
  scatteredPotential : Type
  boundaryIntegralOperator : Type
  densityFunction : Type
  jumpRelations : Prop
  uniquenessProof : Prop

structure PotentialTheoryEvidence {A : WaveScatteringSpace} (P : PotentialTheoryPackage A) where
  jumpRelationsClosed : P.jumpRelations
  uniquenessProofClosed : P.uniquenessProof

def PotentialTheoryClosed {A : WaveScatteringSpace} (P : PotentialTheoryPackage A) : Prop :=
  P.jumpRelations ∧ P.uniquenessProof

theorem potential_theory_closed_from_evidence {A : WaveScatteringSpace}
    (P : PotentialTheoryPackage A) (E : PotentialTheoryEvidence P) :
    PotentialTheoryClosed P := by
  exact And.intro E.jumpRelationsClosed E.uniquenessProofClosed

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse
