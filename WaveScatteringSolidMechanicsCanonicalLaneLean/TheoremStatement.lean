import HautevilleHouse.WaveScatteringSolidMechanicsCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

structure WaveScatteringSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure WaveScatteringAdmittedObject where
  space : WaveScatteringSpace
  boundedDomain : Prop
  elasticMedium : Prop
  incidentWave : Prop
  scatteredWave : Prop
  farFieldPattern : Prop
  conclusion : farFieldPattern

def WaveScatteringWitnessClosed (O : WaveScatteringAdmittedObject) : Prop :=
  O.farFieldPattern

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse