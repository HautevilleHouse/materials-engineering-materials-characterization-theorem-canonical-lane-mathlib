import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean

structure MaterialProperties where
  crystallineStructure : Type u
  defectDensity : Type v
  elasticityTensor : Type w
  fractureToughness : Type x
  latticeParameter : ℝ
  grainBoundaryModel : Prop
  phaseFieldEvolution : Prop

def materialPropertyClosed (M : MaterialProperties) : Prop :=
  M.crystallineStructure ≠ False ∧ M.defectDensity ≠ False

end MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse