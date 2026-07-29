import DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean.AdmissibleClass

/-!
# Meristem Differentiation Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean

structure MeristemDifferentiationPackage where
  stemCellNicheIdentified : Prop
  wuschelClavataFeedback : Prop
  cytokininAuxinCrosstalk : Prop
  cellFateSpecification : Prop
  differentiationIrreversible : Prop

structure MeristemDifferentiationEvidence (M : MeristemDifferentiationPackage) where
  stemCellNicheIdentifiedClosed : M.stemCellNicheIdentified
  wuschelClavataFeedbackClosed : M.wuschelClavataFeedback
  cytokininAuxinCrosstalkClosed : M.cytokininAuxinCrosstalk
  cellFateSpecificationClosed : M.cellFateSpecification
  differentiationIrreversibleClosed : M.differentiationIrreversible

def MeristemDifferentiationClosed (M : MeristemDifferentiationPackage) : Prop :=
  M.stemCellNicheIdentified ∧ M.wuschelClavataFeedback ∧
  M.cytokininAuxinCrosstalk ∧ M.cellFateSpecification ∧
  M.differentiationIrreversible

theorem meristem_differentiation_closed_from_evidence (M : MeristemDifferentiationPackage)
    (E : MeristemDifferentiationEvidence M) : MeristemDifferentiationClosed M := by
  exact And.intro E.stemCellNicheIdentifiedClosed
    (And.intro E.wuschelClavataFeedbackClosed
      (And.intro E.cytokininAuxinCrosstalkClosed
        (And.intro E.cellFateSpecificationClosed E.differentiationIrreversibleClosed)))

end DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse