import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean

structure CrystallographyPackage where
  bravaisLattice : Type u
  unitCell : Type v
  spaceGroup : Type w
  latticeParameters : Prop
  atomicPositions : Prop
  symmetryOperations : Prop
  structureFactor : Prop
  bravaisLatticeDefined : bravaisLattice
  unitCellDefined : unitCell
  spaceGroupDefined : spaceGroup
  latticeParametersClosed : latticeParameters
  atomicPositionsClosed : atomicPositions
  symmetryOperationsClosed : symmetryOperations
  structureFactorClosed : structureFactor

structure CrystallographyEvidence (C : CrystallographyPackage) where
  bravaisLatticeDefinedClosed : C.bravaisLatticeDefined
  unitCellDefinedClosed : C.unitCellDefined
  spaceGroupDefinedClosed : C.spaceGroupDefined
  latticeParametersClosed : C.latticeParameters
  atomicPositionsClosed : C.atomicPositions
  symmetryOperationsClosed : C.symmetryOperations
  structureFactorClosed : C.structureFactor

def CrystallographyClosed (C : CrystallographyPackage) : Prop :=
  C.bravaisLatticeDefined ∧ C.unitCellDefined ∧ C.spaceGroupDefined ∧
  C.latticeParameters ∧ C.atomicPositions ∧ C.symmetryOperations ∧ C.structureFactor

theorem crystallography_closed_from_evidence (C : CrystallographyPackage) (E : CrystallographyEvidence C) :
    CrystallographyClosed C := by
  exact And.intro E.bravaisLatticeDefinedClosed
    (And.intro E.unitCellDefinedClosed
      (And.intro E.spaceGroupDefinedClosed
        (And.intro E.latticeParametersClosed
          (And.intro E.atomicPositionsClosed
            (And.intro E.symmetryOperationsClosed E.structureFactorClosed)))))

end MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse