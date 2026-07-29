import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean

structure VascularDevelopmentPackage where
  vascularCambium : Type
  xylemPhloemDifferentiation : Type
  procambiumPatterning : Prop
  secondaryGrowth : Prop
  longDistanceTransport : Prop

structure VascularDevelopmentEvidence (V : VascularDevelopmentPackage) where
  procambiumPatterningClosed : V.procambiumPatterning
  secondaryGrowthClosed : V.secondaryGrowth
  longDistanceTransportClosed : V.longDistanceTransport

def VascularDevelopmentClosed (V : VascularDevelopmentPackage) : Prop :=
  V.procambiumPatterning ∧ V.secondaryGrowth ∧ V.longDistanceTransport

theorem vascular_development_closed_from_evidence
    (V : VascularDevelopmentPackage) (E : VascularDevelopmentEvidence V) :
    VascularDevelopmentClosed V := by
  exact And.intro E.procambiumPatterningClosed
    (And.intro E.secondaryGrowthClosed E.longDistanceTransportClosed)

end DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse