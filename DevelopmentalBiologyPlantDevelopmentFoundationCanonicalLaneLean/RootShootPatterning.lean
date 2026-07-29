import DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean.AdmissibleClass

/-!
# Root-Shoot Patterning Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean

structure RootShootPatterningPackage where
  polarAuxinTransport : Prop
  rootStemCellNiche : Prop
  shootApicalMeristem : Prop
  vascularPatterning : Prop
  gravitropicResponse : Prop

structure RootShootPatterningEvidence (R : RootShootPatterningPackage) where
  polarAuxinTransportClosed : R.polarAuxinTransport
  rootStemCellNicheClosed : R.rootStemCellNiche
  shootApicalMeristemClosed : R.shootApicalMeristem
  vascularPatterningClosed : R.vascularPatterning
  gravitropicResponseClosed : R.gravitropicResponse

def RootShootPatterningClosed (R : RootShootPatterningPackage) : Prop :=
  R.polarAuxinTransport ∧ R.rootStemCellNiche ∧
  R.shootApicalMeristem ∧ R.vascularPatterning ∧
  R.gravitropicResponse

theorem root_shoot_patterning_closed_from_evidence (R : RootShootPatterningPackage)
    (E : RootShootPatterningEvidence R) : RootShootPatterningClosed R := by
  exact And.intro E.polarAuxinTransportClosed
    (And.intro E.rootStemCellNicheClosed
      (And.intro E.shootApicalMeristemClosed
        (And.intro E.vascularPatterningClosed E.gravitropicResponseClosed)))

end DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse