import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace ElectricalEngineeringRenewableEnergyElectricalCanonicalLaneLean

structure FaultAnalysis where
  faultCurrentFromInverter : Prop
  symmetricalComponents : Prop
  protectionCoordination : Prop
  arcFlashRisk : Prop
  groundingScheme : Prop

structure FaultAnalysisEvidence (F : FaultAnalysis) where
  faultCurrentFromInverterClosed : F.faultCurrentFromInverter
  symmetricalComponentsClosed : F.symmetricalComponents
  protectionCoordinationClosed : F.protectionCoordination
  arcFlashRiskClosed : F.arcFlashRisk
  groundingSchemeClosed : F.groundingScheme

def FaultAnalysisClosed (F : FaultAnalysis) : Prop :=
  F.faultCurrentFromInverter ∧ F.symmetricalComponents ∧ F.protectionCoordination ∧
  F.arcFlashRisk ∧ F.groundingScheme

theorem fault_analysis_closed_from_evidence (F : FaultAnalysis) (E : FaultAnalysisEvidence F) :
    FaultAnalysisClosed F := by
  exact And.intro E.faultCurrentFromInverterClosed
    (And.intro E.symmetricalComponentsClosed
      (And.intro E.protectionCoordinationClosed
        (And.intro E.arcFlashRiskClosed E.groundingSchemeClosed)))

end ElectricalEngineeringRenewableEnergyElectricalCanonicalLaneLean
end HautevilleHouse