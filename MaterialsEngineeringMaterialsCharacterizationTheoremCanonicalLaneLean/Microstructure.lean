import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean

structure MicrostructurePackage where
  grainBoundariesImaged : Prop
  phasesIdentified : Prop
  defectDensityAssessed : Prop
  textureAnalysisComplete : Prop
  precipitatesCharacterized : Prop

structure MicrostructureEvidence (M : MicrostructurePackage) where
  grainBoundariesImagedClosed : M.grainBoundariesImaged
  phasesIdentifiedClosed : M.phasesIdentified
  defectDensityAssessedClosed : M.defectDensityAssessed
  textureAnalysisCompleteClosed : M.textureAnalysisComplete
  precipitatesCharacterizedClosed : M.precipitatesCharacterized

def MicrostructureClosed (M : MicrostructurePackage) : Prop :=
  M.grainBoundariesImaged ∧ M.phasesIdentified ∧ M.defectDensityAssessed ∧ M.textureAnalysisComplete ∧ M.precipitatesCharacterized

theorem microstructure_closed_from_evidence (M : MicrostructurePackage) (E : MicrostructureEvidence M) : MicrostructureClosed M := by
  exact And.intro E.grainBoundariesImagedClosed
    (And.intro E.phasesIdentifiedClosed
      (And.intro E.defectDensityAssessedClosed
        (And.intro E.textureAnalysisCompleteClosed E.precipitatesCharacterizedClosed)))

end MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse