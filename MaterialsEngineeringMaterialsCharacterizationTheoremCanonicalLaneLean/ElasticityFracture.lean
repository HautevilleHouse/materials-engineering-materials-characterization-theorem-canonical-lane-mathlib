import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean.MaterialCharacterization

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean

structure ElasticityFracturePackage (M : MaterialProperties) where
  youngModulus : ℝ
  poissonRatio : ℝ
  stressTensor : ℝ → ℝ → ℝ → ℝ
  strainTensor : ℝ → ℝ → ℝ → ℝ
  criticalStressIntensity : ℝ
  crackGrowthValid : Prop
  linearElasticFractureValid : Prop

structure ElasticityFractureEvidence (M : MaterialProperties) (E : ElasticityFracturePackage M) where
  crackGrowthClosed : E.crackGrowthValid
  linearElasticFractureClosed : E.linearElasticFractureValid

def ElasticityFractureClosed (M : MaterialProperties) (E : ElasticityFracturePackage M) : Prop :=
  E.crackGrowthValid ∧ E.linearElasticFractureValid

theorem elasticity_fracture_closed_from_evidence (M : MaterialProperties) (E : ElasticityFracturePackage M) (Ev : ElasticityFractureEvidence M E) : ElasticityFractureClosed M E := by
  exact And.intro Ev.crackGrowthClosed Ev.linearElasticFractureClosed

end MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse