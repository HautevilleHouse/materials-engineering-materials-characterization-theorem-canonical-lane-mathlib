import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean

structure ThermodynamicEvidence where
  entropyDefined : Prop
  enthalpyCalculated : Prop
  freeEnergyMinimized : Prop
  equilibriumStateReached : Prop
  entropyDefinedClosed : entropyDefined
  enthalpyCalculatedClosed : enthalpyCalculated
  freeEnergyMinimizedClosed : freeEnergyMinimized
  equilibriumStateReachedClosed : equilibriumStateReached

def ThermodynamicClosed (E : ThermodynamicEvidence) : Prop :=
  E.entropyDefined ∧ E.enthalpyCalculated ∧
  E.freeEnergyMinimized ∧ E.equilibriumStateReached

theorem thermodynamic_closed_from_evidence (E : ThermodynamicEvidence) :
    ThermodynamicClosed E := by
  exact And.intro E.entropyDefinedClosed
    (And.intro E.enthalpyCalculatedClosed
      (And.intro E.freeEnergyMinimizedClosed E.equilibriumStateReachedClosed))

end MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse