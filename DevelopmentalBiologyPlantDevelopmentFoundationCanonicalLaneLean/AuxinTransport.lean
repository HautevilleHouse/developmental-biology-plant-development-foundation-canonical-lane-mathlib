import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean

structure AuxinTransportPackage where
  polarTransport : Prop
  pinFormedProteins : Prop
  auxinMaximaPattern : Prop
  canalizationHypothesis : Prop
  phyllotaxisOutput : Prop

structure AuxinTransportEvidence (A : AuxinTransportPackage) where
  polarTransportClosed : A.polarTransport
  pinFormedProteinsClosed : A.pinFormedProteins
  auxinMaximaPatternClosed : A.auxinMaximaPattern
  canalizationHypothesisClosed : A.canalizationHypothesis

def AuxinTransportClosed (A : AuxinTransportPackage) : Prop :=
  A.polarTransport ∧ A.pinFormedProteins ∧ A.auxinMaximaPattern ∧ A.canalizationHypothesis

theorem auxin_transport_closed_from_evidence (A : AuxinTransportPackage)
    (E : AuxinTransportEvidence A) : AuxinTransportClosed A := by
  exact And.intro E.polarTransportClosed
    (And.intro E.pinFormedProteinsClosed
      (And.intro E.auxinMaximaPatternClosed E.canalizationHypothesisClosed))

end DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse