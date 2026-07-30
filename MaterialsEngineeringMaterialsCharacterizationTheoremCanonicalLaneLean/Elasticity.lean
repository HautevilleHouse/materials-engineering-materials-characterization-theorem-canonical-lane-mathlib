import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean

structure ElasticityPackage where
  stressStrainRelationship : Prop
  elasticModuliDetermined : Prop
  poissonRatioComputed : Prop
  hookeLawValid : Prop
  anisotropyAccounted : Prop

structure ElasticityEvidence (E : ElasticityPackage) where
  stressStrainRelationshipClosed : E.stressStrainRelationship
  elasticModuliDeterminedClosed : E.elasticModuliDetermined
  poissonRatioComputedClosed : E.poissonRatioComputed
  hookeLawValidClosed : E.hookeLawValid
  anisotropyAccountedClosed : E.anisotropyAccounted

def ElasticityClosed (E : ElasticityPackage) : Prop :=
  E.stressStrainRelationship ∧ E.elasticModuliDetermined ∧ E.poissonRatioComputed ∧ E.hookeLawValid ∧ E.anisotropyAccounted

theorem elasticity_closed_from_evidence (E : ElasticityPackage) (Ev : ElasticityEvidence E) : ElasticityClosed E := by
  exact And.intro Ev.stressStrainRelationshipClosed
    (And.intro Ev.elasticModuliDeterminedClosed
      (And.intro Ev.poissonRatioComputedClosed
        (And.intro Ev.hookeLawValidClosed Ev.anisotropyAccountedClosed)))

end MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse