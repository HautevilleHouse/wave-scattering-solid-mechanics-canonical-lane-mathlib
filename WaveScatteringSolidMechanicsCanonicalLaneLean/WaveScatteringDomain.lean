import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

structure WaveMedium where
  density : Type u
  elasticity : Type u
  viscosity : Type u
  mediumProperties : density -> elasticity -> viscosity -> Prop

default instance mediumDefault : WaveMedium where
  density := Unit
  elasticity := Unit
  viscosity := Unit
  mediumProperties := fun _ _ _ => True

structure WaveField where
  displacement : Type u
  velocity : Type u
  pressure : Type u
  waveComponents : displacement -> velocity -> pressure -> Prop

structure ScatteringObject where
  geometry : Type u
  boundaryCondition : Type u
  incidentWave : WaveField -> Prop
  scatteredWave : WaveField -> Prop
  totalField : WaveField -> Prop

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse