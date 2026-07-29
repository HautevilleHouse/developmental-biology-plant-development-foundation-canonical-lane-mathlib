import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean

structure AuxinTransportGradientPackage where
  polarTransport : Prop
  auxinSynthesis : Prop
  gradientFormation : Prop
  feedbackRegulation : Prop
  morphogenGradient : Prop

structure AuxinTransportGradientEvidence (A : AuxinTransportGradientPackage) where
  polarTransportClosed : A.polarTransport
  auxinSynthesisClosed : A.auxinSynthesis
  gradientFormationClosed : A.gradientFormation
  feedbackRegulationClosed : A.feedbackRegulation
  morphogenGradientClosed : A.morphogenGradient

def AuxinTransportGradientClosed (A : AuxinTransportGradientPackage) : Prop :=
  A.polarTransport ∧ A.auxinSynthesis ∧ A.gradientFormation ∧ A.feedbackRegulation ∧ A.morphogenGradient

theorem auxin_transport_gradient_closed_from_evidence (A : AuxinTransportGradientPackage) (E : AuxinTransportGradientEvidence A) : AuxinTransportGradientClosed A := by
  exact And.intro E.polarTransportClosed
    (And.intro E.auxinSynthesisClosed
      (And.intro E.gradientFormationClosed
        (And.intro E.feedbackRegulationClosed E.morphogenGradientClosed)))

end DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse
