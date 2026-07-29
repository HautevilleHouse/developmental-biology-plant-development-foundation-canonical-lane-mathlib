import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean

structure MeristematicTissuePackage where
  shootApicalMeristem : Prop
  rootApicalMeristem : Prop
  stemCellNiche : Prop
  organizerCenter : Prop
  cellDivisionPattern : Prop

structure MeristematicTissueEvidence (M : MeristematicTissuePackage) where
  shootApicalMeristemClosed : M.shootApicalMeristem
  rootApicalMeristemClosed : M.rootApicalMeristem
  stemCellNicheClosed : M.stemCellNiche
  organizerCenterClosed : M.organizerCenter
  cellDivisionPatternClosed : M.cellDivisionPattern

def MeristematicTissueClosed (M : MeristematicTissuePackage) : Prop :=
  M.shootApicalMeristem ∧ M.rootApicalMeristem ∧ M.stemCellNiche ∧ M.organizerCenter ∧ M.cellDivisionPattern

theorem meristematic_tissue_closed_from_evidence (M : MeristematicTissuePackage) (E : MeristematicTissueEvidence M) : MeristematicTissueClosed M := by
  exact And.intro E.shootApicalMeristemClosed
    (And.intro E.rootApicalMeristemClosed
      (And.intro E.stemCellNicheClosed
        (And.intro E.organizerCenterClosed E.cellDivisionPatternClosed)))

end DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse
