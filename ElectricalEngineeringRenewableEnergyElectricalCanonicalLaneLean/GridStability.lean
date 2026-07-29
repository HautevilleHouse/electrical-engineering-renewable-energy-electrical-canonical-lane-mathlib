import ElectricalEngineeringRenewableEnergyElectricalCanonicalLaneLean.InverterControl

/-! Grid Stability Package -/

namespace HautevilleHouse
namespace ElectricalEngineeringRenewableEnergyElectricalCanonicalLaneLean

structure GridStabilityPackage {P : PowerSystemModelPackage}
    {I : InverterControlPackage P} where
  smallSignalStability : Prop
  transientStability : Prop
  voltageStability : Prop
  frequencyStability : Prop
  resonanceAnalysis : Prop

structure GridStabilityEvidence {P : PowerSystemModelPackage}
    {I : InverterControlPackage P} (G : GridStabilityPackage P I) where
  smallSignalStabilityClosed : G.smallSignalStability
  transientStabilityClosed : G.transientStability
  voltageStabilityClosed : G.voltageStability
  frequencyStabilityClosed : G.frequencyStability
  resonanceAnalysisClosed : G.resonanceAnalysis

def GridStabilityClosed {P : PowerSystemModelPackage}
    {I : InverterControlPackage P} (G : GridStabilityPackage P I) : Prop :=
  G.smallSignalStability ∧ G.transientStability ∧ G.voltageStability ∧
  G.frequencyStability ∧ G.resonanceAnalysis

theorem grid_stability_closed_from_evidence {P : PowerSystemModelPackage}
    {I : InverterControlPackage P} (G : GridStabilityPackage P I)
    (E : GridStabilityEvidence G) : GridStabilityClosed G := by
  exact And.intro E.smallSignalStabilityClosed
    (And.intro E.transientStabilityClosed
      (And.intro E.voltageStabilityClosed
        (And.intro E.frequencyStabilityClosed E.resonanceAnalysisClosed)))

end ElectricalEngineeringRenewableEnergyElectricalCanonicalLaneLean
end HautevilleHouse