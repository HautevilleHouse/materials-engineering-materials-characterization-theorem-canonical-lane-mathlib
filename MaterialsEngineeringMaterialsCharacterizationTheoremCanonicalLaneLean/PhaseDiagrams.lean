import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  phaseBoundariesMapped : Prop
  eutecticPointIdentified : Prop
  phaseRuleSatisfied : Prop
  temperatureCompositionDiagramConstructed : Prop
  invariantReactionsCatalogued : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesMappedClosed : P.phaseBoundariesMapped
  eutecticPointIdentifiedClosed : P.eutecticPointIdentified
  phaseRuleSatisfiedClosed : P.phaseRuleSatisfied
  temperatureCompositionDiagramConstructedClosed : P.temperatureCompositionDiagramConstructed
  invariantReactionsCataloguedClosed : P.invariantReactionsCatalogued

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundariesMapped ∧ P.eutecticPointIdentified ∧ P.phaseRuleSatisfied ∧ P.temperatureCompositionDiagramConstructed ∧ P.invariantReactionsCatalogued

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesMappedClosed
    (And.intro E.eutecticPointIdentifiedClosed
      (And.intro E.phaseRuleSatisfiedClosed
        (And.intro E.temperatureCompositionDiagramConstructedClosed E.invariantReactionsCataloguedClosed)))

end MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse