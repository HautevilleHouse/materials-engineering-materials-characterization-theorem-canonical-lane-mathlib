import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean

structure ThermalAnalysisPackage where
  thermalConductivityMeasured : Prop
  specificHeatDetermined : Prop
  thermalExpansionCoefficient : Prop
  dscThermogramInterpreted : Prop
  phaseTransitionTemperatures : Prop

structure ThermalAnalysisEvidence (T : ThermalAnalysisPackage) where
  thermalConductivityMeasuredClosed : T.thermalConductivityMeasured
  specificHeatDeterminedClosed : T.specificHeatDetermined
  thermalExpansionCoefficientClosed : T.thermalExpansionCoefficient
  dscThermogramInterpretedClosed : T.dscThermogramInterpreted
  phaseTransitionTemperaturesClosed : T.phaseTransitionTemperatures

def ThermalAnalysisClosed (T : ThermalAnalysisPackage) : Prop :=
  T.thermalConductivityMeasured ∧ T.specificHeatDetermined ∧ T.thermalExpansionCoefficient ∧ T.dscThermogramInterpreted ∧ T.phaseTransitionTemperatures

theorem thermal_analysis_closed_from_evidence (T : ThermalAnalysisPackage) (E : ThermalAnalysisEvidence T) : ThermalAnalysisClosed T := by
  exact And.intro E.thermalConductivityMeasuredClosed
    (And.intro E.specificHeatDeterminedClosed
      (And.intro E.thermalExpansionCoefficientClosed
        (And.intro E.dscThermogramInterpretedClosed E.phaseTransitionTemperaturesClosed)))

end MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse