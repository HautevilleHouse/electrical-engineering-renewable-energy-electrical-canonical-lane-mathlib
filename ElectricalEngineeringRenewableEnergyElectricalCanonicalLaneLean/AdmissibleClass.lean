import ElectricalEngineeringRenewableEnergyElectricalCanonicalLaneLean.RenewableEnergyElectricalObjects

namespace HautevilleHouse
namespace ElectricalEngineeringRenewableEnergyElectricalCanonicalLaneLean

structure AdmissibleClass where
  object : RenewableEnergyElectricalObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : AdmissibleClass) : Prop :=
  ElectricalWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end ElectricalEngineeringRenewableEnergyElectricalCanonicalLaneLean
end HautevilleHouse