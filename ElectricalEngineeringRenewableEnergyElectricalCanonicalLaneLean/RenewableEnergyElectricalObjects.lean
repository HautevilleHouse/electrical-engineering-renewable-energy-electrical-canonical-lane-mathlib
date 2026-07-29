import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringRenewableEnergyElectricalCanonicalLaneLean

structure RenewableEnergyElectricalDevice where
  carrier : Type
  electricalParameters : Type
  gridInterface : Type

default powerRating : Nat

structure RenewableEnergyElectricalObject where
  device : RenewableEnergyElectricalDevice
  efficiency : Prop
  operatesReliably : Prop
  conclusion : efficiency ∧ operatesReliably

end ElectricalEngineeringRenewableEnergyElectricalCanonicalLaneLean
end HautevilleHouse