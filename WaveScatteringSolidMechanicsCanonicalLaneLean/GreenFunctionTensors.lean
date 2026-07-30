import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace WaveScatteringSolidMechanicsCanonicalLaneLean

structure GreenFunctionTensorPackage where
  elastostaticKernel : Prop
  elastodynamicKernel : Prop
  freeSpaceGreen : Prop
  halfSpaceGreen : Prop
  stratifiedGreen : Prop
  asymptoticExpansion : Prop

structure GreenFunctionTensorEvidence (G : GreenFunctionTensorPackage) where
  elastostaticKernelClosed : G.elastostaticKernel
  elastodynamicKernelClosed : G.elastodynamicKernel
  freeSpaceGreenClosed : G.freeSpaceGreen
  halfSpaceGreenClosed : G.halfSpaceGreen
  stratifiedGreenClosed : G.stratifiedGreen
  asymptoticExpansionClosed : G.asymptoticExpansion

def GreenFunctionTensorClosed (G : GreenFunctionTensorPackage) : Prop :=
  G.elastostaticKernel ∧ G.elastodynamicKernel ∧ G.freeSpaceGreen ∧
  G.halfSpaceGreen ∧ G.stratifiedGreen ∧ G.asymptoticExpansion

theorem green_function_tensor_closed_from_evidence (G : GreenFunctionTensorPackage)
    (Ev : GreenFunctionTensorEvidence G) : GreenFunctionTensorClosed G := by
  exact And.intro Ev.elastostaticKernelClosed
    (And.intro Ev.elastodynamicKernelClosed
      (And.intro Ev.freeSpaceGreenClosed
        (And.intro Ev.halfSpaceGreenClosed
          (And.intro Ev.stratifiedGreenClosed Ev.asymptoticExpansionClosed))))

end WaveScatteringSolidMechanicsCanonicalLaneLean
end HautevilleHouse