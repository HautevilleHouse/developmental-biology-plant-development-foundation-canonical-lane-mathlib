import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean

structure MeristemOrganizerModelPackage where
  stemCellNicheRegion : Prop
  organizerCellType : Prop
  wuschelClavataFeedback : Prop
  cytokininResponseGradient : Prop

structure MeristemOrganizerEvidence (M : MeristemOrganizerModelPackage) where
  stemCellNicheRegionClosed : M.stemCellNicheRegion
  organizerCellTypeClosed : M.organizerCellType
  wuschelClavataFeedbackClosed : M.wuschelClavataFeedback
  cytokininResponseGradientClosed : M.cytokininResponseGradient

def MeristemOrganizerClosed (M : MeristemOrganizerModelPackage) : Prop :=
  M.stemCellNicheRegion ∧ M.organizerCellType ∧
  M.wuschelClavataFeedback ∧ M.cytokininResponseGradient

theorem meristem_organizer_closed_from_evidence
    (M : MeristemOrganizerModelPackage) (E : MeristemOrganizerEvidence M) :
    MeristemOrganizerClosed M := by
  exact And.intro E.stemCellNicheRegionClosed
    (And.intro E.organizerCellTypeClosed
      (And.intro E.wuschelClavataFeedbackClosed E.cytokininResponseGradientClosed))

end DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse