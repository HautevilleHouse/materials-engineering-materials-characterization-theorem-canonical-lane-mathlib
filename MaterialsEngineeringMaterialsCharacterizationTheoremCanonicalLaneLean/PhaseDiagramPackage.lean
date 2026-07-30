import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  components : Type u
  phases : Type v
  phaseBoundaries : Type w
  gibbsFreeEnergy : Prop
  phaseStabilityRegions : Prop
  leverRule : Prop
  eutecticPoint : Prop
  componentsDefined : components
  phasesDefined : phases
  phaseBoundariesDefined : phaseBoundaries
  gibbsFreeEnergyClosed : gibbsFreeEnergy
  phaseStabilityRegionsClosed : phaseStabilityRegions
  leverRuleClosed : leverRule
  eutecticPointClosed : eutecticPoint

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  componentsDefinedClosed : P.componentsDefined
  phasesDefinedClosed : P.phasesDefined
  phaseBoundariesDefinedClosed : P.phaseBoundariesDefined
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy
  phaseStabilityRegionsClosed : P.phaseStabilityRegions
  leverRuleClosed : P.leverRule
  eutecticPointClosed : P.eutecticPoint

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.componentsDefined ∧ P.phasesDefined ∧ P.phaseBoundariesDefined ∧
  P.gibbsFreeEnergy ∧ P.phaseStabilityRegions ∧ P.leverRule ∧ P.eutecticPoint

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) :
    PhaseDiagramClosed P := by
  exact And.intro E.componentsDefinedClosed
    (And.intro E.phasesDefinedClosed
      (And.intro E.phaseBoundariesDefinedClosed
        (And.intro E.gibbsFreeEnergyClosed
          (And.intro E.phaseStabilityRegionsClosed
            (And.intro E.leverRuleClosed E.eutecticPointClosed)))))

end MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse