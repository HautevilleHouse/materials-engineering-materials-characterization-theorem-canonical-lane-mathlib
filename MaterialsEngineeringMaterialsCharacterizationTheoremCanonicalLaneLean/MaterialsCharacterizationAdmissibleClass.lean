import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean

structure MaterialsCharacterizationAdmittedObject where
  materialSystem : Type u
  characterizationData : Type v
  admissible : Prop
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def materialsCharacterizationWitnessClosed (O : MaterialsCharacterizationAdmittedObject) : Prop :=
  O.admissible

structure MaterialsCharacterizationAdmittedClass where
  object : MaterialsCharacterizationAdmittedObject
  endpointSatisfied : Prop
  remainderRecorded : Prop
  gateWitness : endpointSatisfied ∨ remainderRecorded

def admittedClosure (A : MaterialsCharacterizationAdmittedClass) : Prop :=
  materialsCharacterizationWitnessClosed A.object ∧ (A.endpointSatisfied ∨ A.remainderRecorded)

end MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse