import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean

structure PhytohormoneSignalTransductionPackage where
  ligandReceptor : Type
  intracellularSignaling : Type
  geneExpressionRegulation : Prop
  signalAmplification : Prop
  feedbackMechanisms : Prop

structure PhytohormoneSignalTransductionEvidence
    (S : PhytohormoneSignalTransductionPackage) where
  geneExpressionRegulationClosed : S.geneExpressionRegulation
  signalAmplificationClosed : S.signalAmplification
  feedbackMechanismsClosed : S.feedbackMechanisms

def PhytohormoneSignalTransductionClosed
    (S : PhytohormoneSignalTransductionPackage) : Prop :=
  S.geneExpressionRegulation ∧ S.signalAmplification ∧ S.feedbackMechanisms

theorem phytohormone_signal_transduction_closed_from_evidence
    (S : PhytohormoneSignalTransductionPackage)
    (E : PhytohormoneSignalTransductionEvidence S) :
    PhytohormoneSignalTransductionClosed S := by
  exact And.intro E.geneExpressionRegulationClosed
    (And.intro E.signalAmplificationClosed E.feedbackMechanismsClosed)

end DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse