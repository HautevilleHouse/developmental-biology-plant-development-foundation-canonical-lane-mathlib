import DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean.AdmissibleClass

/-!
# Hormone Signaling Package
-/

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean

structure HormoneSignalingPackage where
  auxinSynthesisTransport : Prop
  cytokininSynthesis : Prop
  gibberellinRegulation : Prop
  abscisicAcidStress : Prop
  signalingCrosstalk : Prop

structure HormoneSignalingEvidence (H : HormoneSignalingPackage) where
  auxinSynthesisTransportClosed : H.auxinSynthesisTransport
  cytokininSynthesisClosed : H.cytokininSynthesis
  gibberellinRegulationClosed : H.gibberellinRegulation
  abscisicAcidStressClosed : H.abscisicAcidStress
  signalingCrosstalkClosed : H.signalingCrosstalk

def HormoneSignalingClosed (H : HormoneSignalingPackage) : Prop :=
  H.auxinSynthesisTransport ∧ H.cytokininSynthesis ∧
  H.gibberellinRegulation ∧ H.abscisicAcidStress ∧
  H.signalingCrosstalk

theorem hormone_signaling_closed_from_evidence (H : HormoneSignalingPackage)
    (E : HormoneSignalingEvidence H) : HormoneSignalingClosed H := by
  exact And.intro E.auxinSynthesisTransportClosed
    (And.intro E.cytokininSynthesisClosed
      (And.intro E.gibberellinRegulationClosed
        (And.intro E.abscisicAcidStressClosed E.signalingCrosstalkClosed)))

end DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse