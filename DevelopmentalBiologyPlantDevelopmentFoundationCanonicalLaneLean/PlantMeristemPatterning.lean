import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean

structure MeristemPatterningPackage where
  stemCellNiche : Type
  signalGradient : Type
  patternFormation : Prop
  selfOrganization : Prop
  feedbackControl : Prop

structure MeristemPatterningEvidence (M : MeristemPatterningPackage) where
  patternFormationClosed : M.patternFormation
  selfOrganizationClosed : M.selfOrganization
  feedbackControlClosed : M.feedbackControl

def MeristemPatterningClosed (M : MeristemPatterningPackage) : Prop :=
  M.patternFormation ∧ M.selfOrganization ∧ M.feedbackControl

theorem meristem_patterning_closed_from_evidence
    (M : MeristemPatterningPackage) (E : MeristemPatterningEvidence M) :
    MeristemPatterningClosed M := by
  exact And.intro E.patternFormationClosed
    (And.intro E.selfOrganizationClosed E.feedbackControlClosed)

end DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse