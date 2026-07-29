import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean

structure OrganPatterningPackage where
  leafInitiation : Prop
  phyllotaxis : Prop
  floralMeristemIdentity : Prop
  floralOrganSpecification : Prop
  symmetryBreaking : Prop

structure OrganPatterningEvidence (O : OrganPatterningPackage) where
  leafInitiationClosed : O.leafInitiation
  phyllotaxisClosed : O.phyllotaxis
  floralMeristemIdentityClosed : O.floralMeristemIdentity
  floralOrganSpecificationClosed : O.floralOrganSpecification
  symmetryBreakingClosed : O.symmetryBreaking

def OrganPatterningClosed (O : OrganPatterningPackage) : Prop :=
  O.leafInitiation ∧ O.phyllotaxis ∧ O.floralMeristemIdentity ∧ O.floralOrganSpecification ∧ O.symmetryBreaking

theorem organ_patterning_closed_from_evidence (O : OrganPatterningPackage) (E : OrganPatterningEvidence O) : OrganPatterningClosed O := by
  exact And.intro E.leafInitiationClosed
    (And.intro E.phyllotaxisClosed
      (And.intro E.floralMeristemIdentityClosed
        (And.intro E.floralOrganSpecificationClosed E.symmetryBreakingClosed)))

end DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse
