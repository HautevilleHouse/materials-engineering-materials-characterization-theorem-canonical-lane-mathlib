import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean

structure ElasticityPackage where
  stressTensor : Type u
  strainTensor : Type v
  elasticModuli : Type w
  hookesLaw : Prop
  stressStrainRelation : Prop
  elasticConstantsSymmetry : Prop
  compatibilityConditions : Prop
  stressTensorDefined : stressTensor
  strainTensorDefined : strainTensor
  elasticModuliDefined : elasticModuli
  hookesLawClosed : hookesLaw
  stressStrainRelationClosed : stressStrainRelation
  elasticConstantsSymmetryClosed : elasticConstantsSymmetry
  compatibilityConditionsClosed : compatibilityConditions

structure ElasticityEvidence (E : ElasticityPackage) where
  stressTensorDefinedClosed : E.stressTensorDefined
  strainTensorDefinedClosed : E.strainTensorDefined
  elasticModuliDefinedClosed : E.elasticModuliDefined
  hookesLawClosed : E.hookesLaw
  stressStrainRelationClosed : E.stressStrainRelation
  elasticConstantsSymmetryClosed : E.elasticConstantsSymmetry
  compatibilityConditionsClosed : E.compatibilityConditions

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressTensorDefined ∧ E.strainTensorDefined ∧ E.elasticModuliDefined ∧
  E.hookesLaw ∧ E.stressStrainRelation ∧ E.elasticConstantsSymmetry ∧ E.compatibilityConditions

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) :
    ElasticityClosed E := by
  exact And.intro Ev.stressTensorDefinedClosed
    (And.intro Ev.strainTensorDefinedClosed
      (And.intro Ev.elasticModuliDefinedClosed
        (And.intro Ev.hookesLawClosed
          (And.intro Ev.stressStrainRelationClosed
            (And.intro Ev.elasticConstantsSymmetryClosed Ev.compatibilityConditionsClosed)))))

end MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse