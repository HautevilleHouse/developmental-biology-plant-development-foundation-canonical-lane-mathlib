import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean

structure MeristemModelPackage where
  organizingCenter : Prop
  stemCellNiche : Prop
  cytokininSignaling : Prop
  wuschelClavataFeedback : Prop
  cellDivisionOrientation : Prop

structure MeristemModelEvidence (M : MeristemModelPackage) where
  organizingCenterClosed : M.organizingCenter
  stemCellNicheClosed : M.stemCellNiche
  cytokininSignalingClosed : M.cytokininSignaling
  wuschelClavataFeedbackClosed : M.wuschelClavataFeedback

def MeristemModelClosed (M : MeristemModelPackage) : Prop :=
  M.organizingCenter ∧ M.stemCellNiche ∧ M.cytokininSignaling ∧ M.wuschelClavataFeedback

theorem meristem_model_closed_from_evidence (M : MeristemModelPackage)
    (E : MeristemModelEvidence M) : MeristemModelClosed M := by
  exact And.intro E.organizingCenterClosed
    (And.intro E.stemCellNicheClosed
      (And.intro E.cytokininSignalingClosed E.wuschelClavataFeedbackClosed))

end DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse