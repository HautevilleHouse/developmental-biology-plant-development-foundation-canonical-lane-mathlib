import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean

structure PlantDevelopmentObject (Species : Type) where
  species : Species
  meristemModel : Prop
  stemCellPopulation : Prop
  auxinTransport : Prop
  geneRegulationNetwork : Prop
  phyllotaxisPattern : Prop
  organogenesisCompetence : Prop

structure PlantDevelopmentWitness (O : PlantDevelopmentObject Type) where
  meristemModelClosed : O.meristemModel
  stemCellPopulationClosed : O.stemCellPopulation
  geneRegulationNetworkClosed : O.geneRegulationNetwork
  phyllotaxisPatternClosed : O.phyllotaxisPattern

def PlantDevelopmentWitnessClosed (O : PlantDevelopmentObject Type) : Prop :=
  O.meristemModel ∧ O.stemCellPopulation ∧ O.geneRegulationNetwork ∧ O.phyllotaxisPattern

end DevelopmentalBiologyPlantDevelopmentFoundationCanonicalLaneLean
end HautevilleHouse