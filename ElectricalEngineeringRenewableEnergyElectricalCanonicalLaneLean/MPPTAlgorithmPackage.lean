import HautevilleHouse.ElectricalEngineeringRenewableEnergyElectricalCanonicalLaneLean.PowerSystemPackage

namespace HautevilleHouse
namespace ElectricalEngineeringRenewableEnergyElectricalCanonicalLaneLean

structure MPPTAlgorithmPackage {P : PowerSystemPackage} where
  perturbationObserveMethod : Prop
  incrementalConductanceMethod : Prop
  convergenceSpeed : Prop
  trackingEfficiency : Prop

structure MPPTAlgorithmEvidence {P : PowerSystemPackage} (M : MPPTAlgorithmPackage P) where
  perturbationObserveMethodClosed : M.perturbationObserveMethod
  incrementalConductanceMethodClosed : M.incrementalConductanceMethod
  convergenceSpeedClosed : M.convergenceSpeed
  trackingEfficiencyClosed : M.trackingEfficiency

def MPPTAlgorithmClosed {P : PowerSystemPackage} (M : MPPTAlgorithmPackage P) : Prop :=
  M.perturbationObserveMethod ∧ M.incrementalConductanceMethod ∧ M.convergenceSpeed ∧ M.trackingEfficiency

theorem mppt_algorithm_closed_from_evidence {P : PowerSystemPackage} (M : MPPTAlgorithmPackage P) (E : MPPTAlgorithmEvidence M) :
    MPPTAlgorithmClosed M := by
  exact And.intro E.perturbationObserveMethodClosed
    (And.intro E.incrementalConductanceMethodClosed
      (And.intro E.convergenceSpeedClosed E.trackingEfficiencyClosed))

end ElectricalEngineeringRenewableEnergyElectricalCanonicalLaneLean
end HautevilleHouse