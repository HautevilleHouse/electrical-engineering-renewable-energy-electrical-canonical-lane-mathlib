import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringRenewableEnergyElectricalCanonicalLaneLean

structure EnergyStorageSystem {R : RenewableEnergySystem} {F : PowerFlowModel R} {G : GridIntegration F} {V : RenewableResourceVariability G} where
  storageCapacity : Prop
  chargeDischargeEfficiency : Prop
  stateOfChargeControl : Prop
  ageingModel : Prop

structure EnergyStorageSystemEvidence {R : RenewableEnergySystem} {F : PowerFlowModel R} {G : GridIntegration F} {V : RenewableResourceVariability G} (S : EnergyStorageSystem V) where
  storageCapacityClosed : S.storageCapacity
  chargeDischargeEfficiencyClosed : S.chargeDischargeEfficiency
  stateOfChargeControlClosed : S.stateOfChargeControl
  ageingModelClosed : S.ageingModel

def EnergyStorageSystemClosed {R : RenewableEnergySystem} {F : PowerFlowModel R} {G : GridIntegration F} {V : RenewableResourceVariability G} (S : EnergyStorageSystem V) : Prop :=
  S.storageCapacity ∧ S.chargeDischargeEfficiency ∧ S.stateOfChargeControl ∧ S.ageingModel

theorem energy_storage_system_closed_from_evidence
    {R : RenewableEnergySystem} {F : PowerFlowModel R} {G : GridIntegration F} {V : RenewableResourceVariability G} (S : EnergyStorageSystem V) (E : EnergyStorageSystemEvidence S) :
    EnergyStorageSystemClosed S := by
  exact And.intro E.storageCapacityClosed
    (And.intro E.chargeDischargeEfficiencyClosed
      (And.intro E.stateOfChargeControlClosed E.ageingModelClosed))

end ElectricalEngineeringRenewableEnergyElectricalCanonicalLaneLean
end HautevilleHouse
