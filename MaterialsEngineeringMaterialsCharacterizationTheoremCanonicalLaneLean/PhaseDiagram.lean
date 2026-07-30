import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  components : List String
  phases : List String
  phaseBoundaries : Prop
  triplePoints : Prop
  leverRule : Prop
  gibbsFreeEnergy : Type u
  phaseStabilityRegion : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  componentsClosed : P.components = P.components
  phasesClosed : P.phases = P.phases
  phaseBoundariesClosed : P.phaseBoundaries
  triplePointsClosed : P.triplePoints
  leverRuleClosed : P.leverRule
  gibbsFreeEnergyClosed : P.gibbsFreeEnergy
  phaseStabilityRegionClosed : P.phaseStabilityRegion

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundaries ∧ P.triplePoints ∧ P.leverRule ∧ P.phaseStabilityRegion

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage)
    (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesClosed (And.intro E.triplePointsClosed
    (And.intro E.leverRuleClosed E.phaseStabilityRegionClosed))

end MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse