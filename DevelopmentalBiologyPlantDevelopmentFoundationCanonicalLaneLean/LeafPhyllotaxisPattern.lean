import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean

structure LeafPhyllotaxisPatternPackage where
  plastochronRatio : Prop
  divergenceAngle : Prop
  auxinTransportModel : Prop
  primordiaInitiationSequence : Prop

structure LeafPhyllotaxisEvidence (L : LeafPhyllotaxisPatternPackage) where
  plastochronRatioClosed : L.plastochronRatio
  divergenceAngleClosed : L.divergenceAngle
  auxinTransportModelClosed : L.auxinTransportModel
  primordiaInitiationSequenceClosed : L.primordiaInitiationSequence

def LeafPhyllotaxisClosed (L : LeafPhyllotaxisPatternPackage) : Prop :=
  L.plastochronRatio ∧ L.divergenceAngle ∧
  L.auxinTransportModel ∧ L.primordiaInitiationSequence

theorem leaf_phyllotaxis_closed_from_evidence
    (L : LeafPhyllotaxisPatternPackage) (E : LeafPhyllotaxisEvidence L) :
    LeafPhyllotaxisClosed L := by
  exact And.intro E.plastochronRatioClosed
    (And.intro E.divergenceAngleClosed
      (And.intro E.auxinTransportModelClosed E.primordiaInitiationSequenceClosed))

end DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse