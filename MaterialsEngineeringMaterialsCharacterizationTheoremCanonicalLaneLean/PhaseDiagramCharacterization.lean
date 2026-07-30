import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean

structure PhaseDiagramPackage where
  components : Nat
  phases : List String
  temperatureRange : ℝ × ℝ
  pressureRange : ℝ × ℝ
  phaseBoundaries : Prop
  invariantPoints : Prop
  phaseBoundariesDetermined : Prop
  invariantPointsLocated : Prop

structure PhaseDiagramEvidence (P : PhaseDiagramPackage) where
  phaseBoundariesDeterminedClosed : P.phaseBoundariesDetermined
  invariantPointsLocatedClosed : P.invariantPointsLocated

def PhaseDiagramClosed (P : PhaseDiagramPackage) : Prop :=
  P.phaseBoundariesDetermined ∧ P.invariantPointsLocated

theorem phase_diagram_closed_from_evidence (P : PhaseDiagramPackage) (E : PhaseDiagramEvidence P) : PhaseDiagramClosed P := by
  exact And.intro E.phaseBoundariesDeterminedClosed E.invariantPointsLocatedClosed

end MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse