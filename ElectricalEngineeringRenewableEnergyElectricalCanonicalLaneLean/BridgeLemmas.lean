import ElectricalEngineeringRenewableEnergyElectricalCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringRenewableEnergyElectricalCanonicalLaneLean

def ElectricalWitnessClosed (O : RenewableEnergyElectricalObject) : Prop :=
  O.efficiency ∧ O.operatesReliably

def bridgeClosed (A : AdmissibleClass) : Prop :=
  ElectricalWitnessClosed A.object

theorem bridge_from_admissible_class (A : AdmissibleClass) :
    bridgeClosed A := by
  exact A.object.conclusion

end ElectricalEngineeringRenewableEnergyElectricalCanonicalLaneLean
end HautevilleHouse