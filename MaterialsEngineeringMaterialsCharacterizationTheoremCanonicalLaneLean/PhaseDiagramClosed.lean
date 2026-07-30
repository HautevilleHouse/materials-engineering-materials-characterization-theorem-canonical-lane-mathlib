import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean.MaterialCharacterization

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean

structure PhaseDiagramPackage (M : MaterialProperties) where
  temperatureBounds : ℝ × ℝ
  compositionBounds : ℝ × ℝ
  phaseBoundaryCurve : ℝ → ℝ
  phaseStabilityRegions : List (String × ℝ × ℝ)
  thermodynamicConsistency : Prop
  calphadModelValid : Prop

structure PhaseDiagramEvidence (M : MaterialProperties) (P : PhaseDiagramPackage M) where
  thermodynamicConsistencyClosed : P.thermodynamicConsistency
  calphadModelValidClosed : P.calphadModelValid

def PhaseDiagramClosed (M : MaterialProperties) (P : PhaseDiagramPackage M) : Prop :=
  P.thermodynamicConsistency ∧ P.calphadModelValid

theorem phase_diagram_closed_from_evidence (M : MaterialProperties) (P : PhaseDiagramPackage M) (E : PhaseDiagramEvidence M P) : PhaseDiagramClosed M P := by
  exact And.intro E.thermodynamicConsistencyClosed E.calphadModelValidClosed

end MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse