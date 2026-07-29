import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean

structure RootSystemArchitecturePackage where
  primaryRootGrowth : Prop
  lateralRootBranching : Prop
  gravitropicResponse : Prop
  nutrientUptakeZone : Prop

structure RootSystemArchitectureEvidence (R : RootSystemArchitecturePackage) where
  primaryRootGrowthClosed : R.primaryRootGrowth
  lateralRootBranchingClosed : R.lateralRootBranching
  gravitropicResponseClosed : R.gravitropicResponse
  nutrientUptakeZoneClosed : R.nutrientUptakeZone

def RootSystemArchitectureClosed (R : RootSystemArchitecturePackage) : Prop :=
  R.primaryRootGrowth ∧ R.lateralRootBranching ∧
  R.gravitropicResponse ∧ R.nutrientUptakeZone

theorem root_system_architecture_closed_from_evidence
    (R : RootSystemArchitecturePackage) (E : RootSystemArchitectureEvidence R) :
    RootSystemArchitectureClosed R := by
  exact And.intro E.primaryRootGrowthClosed
    (And.intro E.lateralRootBranchingClosed
      (And.intro E.gravitropicResponseClosed E.nutrientUptakeZoneClosed))

end DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse