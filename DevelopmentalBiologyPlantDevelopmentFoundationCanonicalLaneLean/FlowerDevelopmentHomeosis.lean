import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean

structure FlowerDevelopmentHomeosisPackage where
  abcModelRegulation : Prop
  floralMeristemIdentity : Prop
  organIdentityGenes : Prop
  homeoticVariation : Prop

structure FlowerDevelopmentHomeosisEvidence (F : FlowerDevelopmentHomeosisPackage) where
  abcModelRegulationClosed : F.abcModelRegulation
  floralMeristemIdentityClosed : F.floralMeristemIdentity
  organIdentityGenesClosed : F.organIdentityGenes
  homeoticVariationClosed : F.homeoticVariation

def FlowerDevelopmentHomeosisClosed (F : FlowerDevelopmentHomeosisPackage) : Prop :=
  F.abcModelRegulation ∧ F.floralMeristemIdentity ∧
  F.organIdentityGenes ∧ F.homeoticVariation

theorem flower_development_homeosis_closed_from_evidence
    (F : FlowerDevelopmentHomeosisPackage) (E : FlowerDevelopmentHomeosisEvidence F) :
    FlowerDevelopmentHomeosisClosed F := by
  exact And.intro E.abcModelRegulationClosed
    (And.intro E.floralMeristemIdentityClosed
      (And.intro E.organIdentityGenesClosed E.homeoticVariationClosed))

end DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse