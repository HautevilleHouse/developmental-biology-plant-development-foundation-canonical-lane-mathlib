import DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean.MeristemDifferentiation
import DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean.RootShootPatterning
import DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean.HormoneSignaling

/-!
# Plant Development Foundation Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean

structure PlantDevelopmentFoundation where
  meristemDifferentiation : MeristemDifferentiationPackage
  meristemDifferentiationEvidence : MeristemDifferentiationEvidence meristemDifferentiation
  rootShootPatterning : RootShootPatterningPackage
  rootShootPatterningEvidence : RootShootPatterningEvidence rootShootPatterning
  hormoneSignaling : HormoneSignalingPackage
  hormoneSignalingEvidence : HormoneSignalingEvidence hormoneSignaling

def PlantDevelopmentFoundationClosed (A : PlantDevelopmentFoundation) : Prop :=
  MeristemDifferentiationClosed A.meristemDifferentiation ∧
  RootShootPatterningClosed A.rootShootPatterning ∧
  HormoneSignalingClosed A.hormoneSignaling

theorem plant_development_foundation_closed_from_evidence (A : PlantDevelopmentFoundation) :
  PlantDevelopmentFoundationClosed A := by
  exact And.intro (meristem_differentiation_closed_from_evidence A.meristemDifferentiation A.meristemDifferentiationEvidence)
    (And.intro (root_shoot_patterning_closed_from_evidence A.rootShootPatterning A.rootShootPatterningEvidence)
      (hormone_signaling_closed_from_evidence A.hormoneSignaling A.hormoneSignalingEvidence))

end DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse