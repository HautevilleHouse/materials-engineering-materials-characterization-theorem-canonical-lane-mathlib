import canonicalLaneMathlib.AdmissibleClass
import MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean.MaterialCharacterization

namespace HautevilleHouse
namespace MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean

structure CrystallographyPackage (M : MaterialProperties) where
  bravaisLattice : String
  spaceGroup : String
  crystalStructureFactor : ℝ → ℝ
  diffractionPattern : List ℝ
  latticeSimulationValid : Prop
  symmetryAdapted : Prop

structure CrystallographyEvidence (M : MaterialProperties) (C : CrystallographyPackage M) where
  latticeSimulationClosed : C.latticeSimulationValid
  symmetryAdaptedClosed : C.symmetryAdapted

def CrystallographyClosed (M : MaterialProperties) (C : CrystallographyPackage M) : Prop :=
  C.latticeSimulationValid ∧ C.symmetryAdapted

theorem crystallography_closed_from_evidence (M : MaterialProperties) (C : CrystallographyPackage M) (E : CrystallographyEvidence M C) : CrystallographyClosed M C := by
  exact And.intro E.latticeSimulationClosed E.symmetryAdaptedClosed

end MaterialsEngineeringMaterialsCharacterizationTheoremCanonicalLaneLean
end HautevilleHouse