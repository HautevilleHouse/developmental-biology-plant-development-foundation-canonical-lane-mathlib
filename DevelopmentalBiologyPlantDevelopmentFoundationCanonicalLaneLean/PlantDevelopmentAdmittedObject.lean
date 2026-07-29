import canonicalLaneMathlib.AdmissibleClass
import Mathlib.Topology.Basic

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean

structure PlantSpace where
  carrier : Type
  topology : TopologicalSpace carrier

structure PlantDevelopmentAdmittedObject where
  space : PlantSpace
  developmentalProcess : Prop
  evolutionaryReachable : Prop
  stemCellDifferentiation : Prop
  conclusion : developmentalProcess ∧ evolutionaryReachable ∧ stemCellDifferentiation

def PlantDevelopmentWitnessClosed (O : PlantDevelopmentAdmittedObject) : Prop :=
  O.developmentalProcess ∧ O.evolutionaryReachable ∧ O.stemCellDifferentiation

end DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse