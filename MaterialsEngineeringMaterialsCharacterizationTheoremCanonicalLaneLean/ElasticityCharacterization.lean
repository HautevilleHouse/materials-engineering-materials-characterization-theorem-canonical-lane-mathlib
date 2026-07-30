import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean

structure ElasticityPackage where
  elasticConstants : Matrix (Fin 6) (Fin 6) ℝ
  complianceMatrix : Matrix (Fin 6) (Fin 6) ℝ
  youngModulus : ℝ
  shearModulus : ℝ
  poissonRatio : ℝ
  elasticConstantsMeasured : Prop
  isotropyChecked : Prop
  stiffnessComplianceInverse : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  elasticConstantsMeasuredClosed : E.elasticConstantsMeasured
  isotropyCheckedClosed : E.isotropyChecked
  stiffnessComplianceInverseClosed : E.stiffnessComplianceInverse

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.elasticConstantsMeasured ∧ E.isotropyChecked ∧ E.stiffnessComplianceInverse

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.elasticConstantsMeasuredClosed (And.intro Ev.isotropyCheckedClosed Ev.stiffnessComplianceInverseClosed)

end MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse