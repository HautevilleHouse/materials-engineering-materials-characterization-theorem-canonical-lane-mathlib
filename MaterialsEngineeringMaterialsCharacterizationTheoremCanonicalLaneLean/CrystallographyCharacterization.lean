import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLattice : Type u
  unitCell : Type v
  spaceGroup : Type w
  symmetryOperations : Prop
  xrayDiffractionPattern : Prop
  latticeParameter : ℝ
  bravaisLatticeIdentified : Prop
  spaceGroupDetermined : Prop
  xrayPatternIndexed : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeIdentifiedClosed : C.bravaisLatticeIdentified
  spaceGroupDeterminedClosed : C.spaceGroupDetermined
  xrayPatternIndexedClosed : C.xrayPatternIndexed

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLatticeIdentified ∧ C.spaceGroupDetermined ∧ C.xrayPatternIndexed

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeIdentifiedClosed (And.intro E.spaceGroupDeterminedClosed E.xrayPatternIndexedClosed)

end MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse