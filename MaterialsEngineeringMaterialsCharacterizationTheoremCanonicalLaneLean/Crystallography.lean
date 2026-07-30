import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean

structure CrystallographyPackage where
  latticeStructure : Prop
  bravaisLatticeClassified : Prop
  xrdPatternIndexed : Prop
  symmetryGroupIdentified : Prop
  unitCellParametersDetermined : Prop

structure CrystallographyEvidence (C : CrystallographyPackage) where
  latticeStructureClosed : C.latticeStructure
  bravaisLatticeClassifiedClosed : C.bravaisLatticeClassified
  xrdPatternIndexedClosed : C.xrdPatternIndexed
  symmetryGroupIdentifiedClosed : C.symmetryGroupIdentified
  unitCellParametersDeterminedClosed : C.unitCellParametersDetermined

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.latticeStructure ∧ C.bravaisLatticeClassified ∧ C.xrdPatternIndexed ∧ C.symmetryGroupIdentified ∧ C.unitCellParametersDetermined

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) : CrystallographyClosed C := by
  exact And.intro E.latticeStructureClosed
    (And.intro E.bravaisLatticeClassifiedClosed
      (And.intro E.xrdPatternIndexedClosed
        (And.intro E.symmetryGroupIdentifiedClosed E.unitCellParametersDeterminedClosed)))

end MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse