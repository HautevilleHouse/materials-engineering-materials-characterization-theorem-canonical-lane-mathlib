import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean

structure PhaseDiagramEvidence where
  phasesIdentified : Prop
  phaseBoundariesMapped : Prop
  gibbsPhaseRuleSatisfied : Prop
  leverRuleVerified : Prop
  phasesIdentifiedClosed : phasesIdentified
  phaseBoundariesMappedClosed : phaseBoundariesMapped
  gibbsPhaseRuleSatisfiedClosed : gibbsPhaseRuleSatisfied
  leverRuleVerifiedClosed : leverRuleVerified

def PhaseDiagramClosed (E : PhaseDiagramEvidence) : Prop :=
  E.phasesIdentified ∧ E.phaseBoundariesMapped ∧
  E.gibbsPhaseRuleSatisfied ∧ E.leverRuleVerified

theorem phase_diagram_closed_from_evidence (E : PhaseDiagramEvidence) :
    PhaseDiagramClosed E := by
  exact And.intro E.phasesIdentifiedClosed
    (And.intro E.phaseBoundariesMappedClosed
      (And.intro E.gibbsPhaseRuleSatisfiedClosed E.leverRuleVerifiedClosed))

end MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse