import canonicalLaneMathlib.AdmissibleClass
import HautevilleHouse.MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean.CrystallographyPackage
import HautevilleHouse.MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean.PhaseDiagramPackage
import HautevilleHouse.MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean.ElasticityPackage
import HautevilleHouse.MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean.FractureMechanicsPackage

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean

structure MaterialsCharacterizationFoundation where
  crystallography : CrystallographyPackage
  crystallographyEvidence : CrystallographyEvidence crystallography
  phaseDiagram : PhaseDiagramPackage
  phaseDiagramEvidence : PhaseDiagramEvidence phaseDiagram
  elasticity : ElasticityPackage
  elasticityEvidence : ElasticityEvidence elasticity
  fractureMechanics : FractureMechanicsPackage
  fractureMechanicsEvidence : FractureMechanicsEvidence fractureMechanics

def MaterialsCharacterizationFoundationClosed (A : MaterialsCharacterizationFoundation) : Prop :=
  CrystallographyClosed A.crystallography ∧
  PhaseDiagramClosed A.phaseDiagram ∧
  ElasticityClosed A.elasticity ∧
  FractureMechanicsClosed A.fractureMechanics

theorem materials_characterization_foundation_closed_from_evidence
    (A : MaterialsCharacterizationFoundation) :
    MaterialsCharacterizationFoundationClosed A := by
  have h_cryst : CrystallographyClosed A.crystallography :=
    crystallography_closed_from_evidence A.crystallography A.crystallographyEvidence
  have h_phase : PhaseDiagramClosed A.phaseDiagram :=
    phase_diagram_closed_from_evidence A.phaseDiagram A.phaseDiagramEvidence
  have h_elast : ElasticityClosed A.elasticity :=
    elasticity_closed_from_evidence A.elasticity A.elasticityEvidence
  have h_fract : FractureMechanicsClosed A.fractureMechanics :=
    fracture_mechanics_closed_from_evidence A.fractureMechanics A.fractureMechanicsEvidence
  exact And.intro h_cryst (And.intro h_phase (And.intro h_elast h_fract))

end MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse