import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean

structure FractureMechanicsPackage where
  stressIntensityFactor : Prop
  crackGrowthCriteria : Prop
  fractureToughnessMeasured : Prop
  parisLawValid : Prop
  fatigueLifePredicted : Prop

structure FractureMechanicsEvidence (F : FractureMechanicsPackage) where
  stressIntensityFactorClosed : F.stressIntensityFactor
  crackGrowthCriteriaClosed : F.crackGrowthCriteria
  fractureToughnessMeasuredClosed : F.fractureToughnessMeasured
  parisLawValidClosed : F.parisLawValid
  fatigueLifePredictedClosed : F.fatigueLifePredicted

def FractureMechanicsClosed (F : FractureMechanicsPackage) : Prop :=
  F.stressIntensityFactor ∧ F.crackGrowthCriteria ∧ F.fractureToughnessMeasured ∧ F.parisLawValid ∧ F.fatigueLifePredicted

theorem fracture_mechanics_closed_from_evidence (F : FractureMechanicsPackage) (E : FractureMechanicsEvidence F) : FractureMechanicsClosed F := by
  exact And.intro E.stressIntensityFactorClosed
    (And.intro E.crackGrowthCriteriaClosed
      (And.intro E.fractureToughnessMeasuredClosed
        (And.intro E.parisLawValidClosed E.fatigueLifePredictedClosed)))

end MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse