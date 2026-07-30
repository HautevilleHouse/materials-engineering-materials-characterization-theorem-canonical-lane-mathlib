import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean

structure ElasticityEvidence where
  stressStrainLinearRelation : Prop
  elasticModuliDetermined : Prop
  hookesLawValid : Prop
  poissonRatioMeasured : Prop
  stressStrainLinearRelationClosed : stressStrainLinearRelation
  elasticModuliDeterminedClosed : elasticModuliDetermined
  hookesLawValidClosed : hookesLawValid
  poissonRatioMeasuredClosed : poissonRatioMeasured

def ElasticityClosed (E : ElasticityEvidence) : Prop :=
  E.stressStrainLinearRelation ∧ E.elasticModuliDetermined ∧
  E.hookesLawValid ∧ E.poissonRatioMeasured

theorem elasticity_closed_from_evidence (E : ElasticityEvidence) :
    ElasticityClosed E := by
  exact And.intro E.stressStrainLinearRelationClosed
    (And.intro E.elasticModuliDeterminedClosed
      (And.intro E.hookesLawValidClosed E.poissonRatioMeasuredClosed))

end MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse