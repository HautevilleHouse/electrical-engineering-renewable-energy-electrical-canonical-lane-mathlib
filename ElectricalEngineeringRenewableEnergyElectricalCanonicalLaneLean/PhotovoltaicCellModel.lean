import ElectricalEngineeringRenewableEnergyElectricalCanonicalLaneLean.RenewableEnergyElectricalObjects

namespace HautevilleHouse
namespace ElectricalEngineeringRenewableEnergyElectricalCanonicalLaneLean

structure PhotovoltaicCellParameters where
  maxPower : Nat
  efficiencyRating : Prop
  temperatureCoefficient : Prop

structure PhotovoltaicCellDevice where
  parameters : PhotovoltaicCellParameters
  outputPower : Nat

structure PhotovoltaicCellEvidence (cell : PhotovoltaicCellDevice) where
  maxPowerClosed : cell.parameters.maxPower = 250
  efficiencyRatingClosed : cell.parameters.efficiencyRating
  temperatureCoefficientClosed : cell.parameters.temperatureCoefficient

def PhotovoltaicCellClosed (cell : PhotovoltaicCellDevice) : Prop :=
  cell.parameters.maxPower = 250 ∧
  cell.parameters.efficiencyRating ∧
  cell.parameters.temperatureCoefficient

theorem photovoltaic_cell_closed_from_evidence (cell : PhotovoltaicCellDevice)
    (E : PhotovoltaicCellEvidence cell) : PhotovoltaicCellClosed cell := by
  exact And.intro E.maxPowerClosed
    (And.intro E.efficiencyRatingClosed E.temperatureCoefficientClosed)

end ElectricalEngineeringRenewableEnergyElectricalCanonicalLaneLean
end HautevilleHouse