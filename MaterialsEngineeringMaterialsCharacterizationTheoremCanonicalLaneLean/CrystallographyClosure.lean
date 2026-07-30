import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean

structure CrystallographyEvidence where
  bravaisLatticeClassified : Prop
  symmetryGroupRecorded : Prop
  diffractionPatternIndexed : Prop
  reciprocalSpaceMapped : Prop
  bravaisLatticeClassifiedClosed : bravaisLatticeClassified
  symmetryGroupRecordedClosed : symmetryGroupRecorded
  diffractionPatternIndexedClosed : diffractionPatternIndexed
  reciprocalSpaceMappedClosed : reciprocalSpaceMapped

def CrystallographyClosed (E : CrystallographyEvidence) : Prop :=
  E.bravaisLatticeClassified ∧ E.symmetryGroupRecorded ∧
  E.diffractionPatternIndexed ∧ E.reciprocalSpaceMapped

theorem crystallography_closed_from_evidence (E : CrystallographyEvidence) :
    CrystallographyClosed E := by
  exact And.intro E.bravaisLatticeClassifiedClosed
    (And.intro E.symmetryGroupRecordedClosed
      (And.intro E.diffractionPatternIndexedClosed E.reciprocalSpaceMappedClosed))

end MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse