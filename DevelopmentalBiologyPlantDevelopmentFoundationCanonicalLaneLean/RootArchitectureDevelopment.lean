import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean

structure RootArchitectureDevelopmentPackage where
  rootSystem : Type
  branchingPattern : Type
  gravitropicResponse : Prop
  nutrientUptake : Prop
  environmentalAdaptation : Prop

structure RootArchitectureDevelopmentEvidence
    (R : RootArchitectureDevelopmentPackage) where
  gravitropicResponseClosed : R.gravitropicResponse
  nutrientUptakeClosed : R.nutrientUptake
  environmentalAdaptationClosed : R.environmentalAdaptation

def RootArchitectureDevelopmentClosed
    (R : RootArchitectureDevelopmentPackage) : Prop :=
  R.gravitropicResponse ∧ R.nutrientUptake ∧ R.environmentalAdaptation

theorem root_architecture_development_closed_from_evidence
    (R : RootArchitectureDevelopmentPackage)
    (E : RootArchitectureDevelopmentEvidence R) :
    RootArchitectureDevelopmentClosed R := by
  exact And.intro E.gravitropicResponseClosed
    (And.intro E.nutrientUptakeClosed E.environmentalAdaptationClosed)

end DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse